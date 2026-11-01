package g;

import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class yf {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f20335a = dsr.k(yf.class);

    public static void b(File file, String str) {
        if (file == null || !file.exists() || file.isDirectory()) {
            return;
        }
        throw new fqy(str + " directory exists as file " + file);
    }

    public static void c(cqc cqcVar) {
        String substring;
        File file;
        ur urVar = cqcVar.k;
        ArrayList<File> arrayList = urVar.ad;
        if (arrayList.isEmpty() && cqcVar.f13324e.isEmpty()) {
            throw new fqy("Please specify input file");
        }
        for (File file2 : arrayList) {
            if (!file2.exists()) {
                throw new fqy("File not found " + file2.getAbsolutePath());
            }
        }
        File file3 = urVar.aj;
        File file4 = urVar.s;
        File file5 = urVar.z;
        dba dbaVar = f20335a;
        if (file3 == null) {
            if (file4 != null) {
                file = file4;
            } else if (file5 != null) {
                file = file5;
            } else {
                ArrayList arrayList2 = urVar.ad;
                if (arrayList2.isEmpty()) {
                    substring = "jadx-output";
                } else {
                    String name = ((File) arrayList2.get(0)).getName();
                    int lastIndexOf = name.lastIndexOf(46);
                    substring = lastIndexOf != -1 ? name.substring(0, lastIndexOf) : name.concat("-jadx-output");
                }
                dbaVar.g(substring, "output directory: {}");
                file = new File(substring);
            }
            urVar.aj = file;
        }
        if (file4 == null) {
            urVar.s = new File(urVar.aj, "sources");
        }
        if (file5 == null) {
            urVar.z = new File(urVar.aj, "resources");
        }
        b(urVar.aj, "Output");
        b(urVar.s, "Source output");
        b(urVar.z, "Resources output");
        if (dbaVar.af()) {
            dbaVar.v(urVar, "Effective jadx args: {}");
        }
    }
}
