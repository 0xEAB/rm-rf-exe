import rm.rf;
import std.stdio : writeln;

int main(string[] args)
{
    if (args.length != 2)
    {
        writeln("Usage:\trm-rf.exe dir");
        return 1;
    }
    rmdirRecurseForce(args[1]);
    return 0;
}
