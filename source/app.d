import rm.rf;
import std.stdio : writeln;

int main(string[] args)
{
    if (args.length < 2)
    {
        writeln("Usage:\trm-rf.exe dir");
        return 1;
    }

    foreach(string dir; args[1 .. $])
        rmdirRecurseForce(dir);
    return 0;
}
