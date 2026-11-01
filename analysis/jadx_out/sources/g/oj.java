package g;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class oj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f19762a = dsr.k(oj.class);

    /* renamed from: b, reason: collision with root package name */
    public final cvp f19763b;

    /* renamed from: c, reason: collision with root package name */
    public final awr f19764c;

    /* renamed from: d, reason: collision with root package name */
    public final File f19765d;

    public oj(cqc cqcVar, File file, awr awrVar) {
        this.f19764c = awrVar;
        this.f19765d = file;
        this.f19763b = cqcVar.k.am;
    }

    public static void e(mf mfVar, File file) {
        Path path;
        int[] iArr = ghj.f18162a;
        gju gjuVar = mfVar.f19639c;
        Object obj = mfVar.f19637a;
        String str = mfVar.f19640d;
        int i = iArr[gjuVar.ordinal()];
        if (i == 1 || i == 2) {
            dba dbaVar = wm.f20227a;
            wm.b(file, ((emz) obj).c());
            return;
        }
        dba dbaVar2 = f19762a;
        if (i == 3) {
            byte[] bArr = (byte[]) obj;
            dba dbaVar3 = bqu.f12045c;
            bqu.f(file.getParentFile());
            try {
                path = file.toPath();
                Files.write(path, bArr, new OpenOption[0]);
                return;
            } catch (Exception e2) {
                dbaVar2.t(str, "Resource '{}' not saved, got exception", e2);
                return;
            }
        }
        if (i != 4) {
            dbaVar2.p(str, "Resource '{}' not saved, unknown type");
            return;
        }
        awr awrVar = (awr) obj;
        dba dbaVar4 = bqu.f12045c;
        bqu.f(file.getParentFile());
        try {
            cvm.f(awrVar, new aoi(14, file));
        } catch (Exception e3) {
            dbaVar2.t(str, "Resource '{}' not saved, got exception", e3);
        }
    }

    public final void f(mf mfVar) {
        if (mfVar == null) {
            return;
        }
        gju gjuVar = mfVar.f19639c;
        gju gjuVar2 = gju.RES_TABLE;
        File file = this.f19765d;
        if (gjuVar == gjuVar2) {
            e(mfVar, new File(file, "res/values/public.xml"));
            Iterator it = mfVar.f19638b.iterator();
            while (it.hasNext()) {
                f((mf) it.next());
            }
            return;
        }
        File file2 = new File(file, mfVar.f19640d.replace('/', File.separatorChar));
        if (this.f19763b.f13601c.bu(file, file2)) {
            e(mfVar, file2);
        } else {
            f19762a.m(file2.getPath(), "Invalid resource name or path traversal attack detected: {}");
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        awr awrVar = this.f19764c;
        try {
            f(awrVar.f());
        } catch (Exception | StackOverflowError e2) {
            f19762a.t(awrVar.f10992d, "Failed to save resource: {}", e2);
        }
    }
}
