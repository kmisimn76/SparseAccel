from subprocess import Popen, PIPE

def gen_all_case(dim, group_cases, bank_cases):
    result = []
    for gc in group_cases:
        for bc in bank_cases:
            result.append([dim,gc, bc])
    return result

cases = []

cases.extend(gen_all_case(32, [4,8,16], [1,2,4]))
cases.extend(gen_all_case(16, [2,4,8,16], [1,2,4,8]))
cases.extend(gen_all_case(8, [1,2,4,8], [1,2,4,8]))
cases.extend(gen_all_case(4, [1,2,4], [1,2,4]))

for i in range(len(cases)):
    command = ["./make_case.sh", str(cases[i][0]), str(cases[i][1]), str(cases[i][2])]
    Popen(command, stdout=PIPE, stderr=PIPE)
    print(command)
