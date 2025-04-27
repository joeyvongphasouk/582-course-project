import shutil
import traceback
import os
import automata as atma
from automata.AnmalZoo.anml_zoo import anml_path, AnmalZoo
from automata.utility.utility import minimize_automata
import sys

def process_anml(path):
    try:
        automatas = atma.parse_anml_file(path)
        automatas.remove_ors()
        automatas = automatas.get_connected_components_as_automatas()
        
        target_bit_widths = [1, 2, 4, 8, 16]
        # bitwidth to be calculated

        stats = [[0, 0] for _ in range(len(target_bit_widths))]
        total_ns, total_ne = 0.0, 0.0
        
        filename = os.path.splitext(os.path.basename(path))[0]
        top_dir = "./Outputs/Automatas/" + filename
        
        shutil.rmtree(top_dir, ignore_errors=True)
        os.mkdir(top_dir)
        
        for atm_idx, atm in enumerate(automatas):
            print("Processing {} of {}".format(atm_idx + 1, len(automatas)))
            
            result_dir = top_dir + "/" + str(atm_idx + 1)
        
            shutil.rmtree(result_dir, ignore_errors=True)
            os.mkdir(result_dir)
            
            total_ns += atm.nodes_count
            total_ne += atm.edges_count

            b_atm = atma.automata_network.get_bit_automaton(atm, original_bit_width=atm.max_val_dim_bits_len)
            # generate bit automaton

            for tb_idx, tb in enumerate(target_bit_widths):
                if tb == 1:
                    atm = b_atm.clone()
                else:
                    atm = atma.automata_network.get_strided_automata2(atm=b_atm,
                                                                  stride_value=tb,
                                                                  is_scalar=True,
                                                                  base_value=2,
                                                                  add_residual=True)

                if atm.is_homogeneous is False:
                    atm.make_homogenous()

                minimize_automata(atm, same_residuals_only = False, same_report_code = False)

                n_s = atm.nodes_count
                n_e = atm.edges_count

                stats[tb_idx][0] += n_s
                stats[tb_idx][1] += n_e
                
                atm.draw_graph(result_dir + "/" + filename + "-" + str(tb) + ".svg")
                os.system("cp {} {}".format(path, result_dir))
        
        for tb_idx, tb in enumerate(target_bit_widths):
            print "bitwidth = ", tb, ":  number of states (normalized to 8bit design) = ", stats[tb_idx][0]/total_ns, "number of edges (normalized to 8bit design) = ", stats[tb_idx][1]/total_ne
        
        return path, stats
    except Exception, e:
        tracebackString = traceback.format_exc(e)
        print tracebackString
        raise StandardError, "\n\nError occurred. Original traceback is\n%s\n" %(tracebackString)

if __name__ == '__main__':
    if len(sys.argv) > 1:
        for i in range(1, len(sys.argv)):
            print("Processing {}".format(sys.argv[i]))
            process_anml(sys.argv[i])
    else:
        print("No arguments passed")
