package g;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public abstract class wm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f20227a = dsr.k(wm.class);

    public static void b(File file, String str) {
        File i = bqu.i(file);
        bqu.f(i.getParentFile());
        try {
            PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(i), StandardCharsets.UTF_8));
            try {
                printWriter.println(str);
                printWriter.close();
            } finally {
            }
        } catch (Exception e2) {
            f20227a.l("Save file error", e2);
        }
    }

    public static void c(File file, cci cciVar, emz emzVar) {
        String str;
        csv csvVar = csv.DONT_GENERATE;
        sm smVar = cciVar.l;
        dwg dwgVar = cciVar.f12631ab;
        ve veVar = cciVar.ak;
        if (smVar.g(csvVar) || emzVar == emz.f15831e) {
            return;
        }
        String c2 = emzVar.c();
        if (c2.isEmpty()) {
            return;
        }
        ur urVar = dwgVar.i;
        urVar.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(veVar.o());
        dyx dyxVar = dwgVar.i.o;
        int i = drd.f14667a[dyxVar.ordinal()];
        if (i == 1) {
            str = ".java";
        } else {
            if (i != 2) {
                throw new gck("Unknown output format: " + dyxVar);
            }
            str = ".json";
        }
        sb.append(str);
        String sb2 = sb.toString();
        if (urVar.am.f13601c.bt(sb2)) {
            b(new File(file, sb2), c2);
        }
    }
}
