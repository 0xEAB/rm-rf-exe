import rm.rf;
import std.algorithm;
import std.file;
import std.range;
import std.stdio;

int main(string[] args)
{
    if (args.length < 2)
    {
        stderr.writeln("Usage:\trm-rf.exe [directory] [...]");
        return 1;
    }

    args.drop(1).each!rmdirRecurseForce;
    return 0;
}
