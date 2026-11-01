package g;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;

/* loaded from: classes.dex */
public final class ql extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f19862a = dsr.k(ql.class);

    @Override // g.pj
    public final String f() {
        return "SaveDeobfMapping";
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
    
        if (r2 != false) goto L25;
     */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(dwg dwgVar) {
        Path path;
        Path absolutePath;
        Path fileName;
        String path2;
        Path parent;
        Path resolve;
        Path absolutePath2;
        boolean exists;
        ur urVar = dwgVar.i;
        ur urVar2 = dwgVar.i;
        urVar.getClass();
        if (urVar.o != dyx.JSON) {
            cgz cgzVar = urVar2.l;
            cgzVar.getClass();
            cgz cgzVar2 = cgz.READ_OR_SAVE;
            if (cgzVar == cgzVar2 || cgzVar == cgz.OVERWRITE) {
                dba dbaVar = ghc.f18144a;
                urVar2.getClass();
                path = ((File) urVar2.ad.get(0)).toPath();
                absolutePath = path.toAbsolutePath();
                dba dbaVar2 = bqu.f12045c;
                fileName = absolutePath.getFileName();
                path2 = fileName.toString();
                int lastIndexOf = path2.lastIndexOf(46);
                if (lastIndexOf != -1) {
                    path2 = path2.substring(0, lastIndexOf);
                }
                parent = absolutePath.getParent();
                resolve = parent.resolve(path2 + ".jobf");
                if (urVar2.l != cgz.IGNORE) {
                    ghc.f18144a.v(resolve, "Deobfuscation map file set to: {}");
                }
                ghc ghcVar = new ghc(resolve);
                Path path3 = ghcVar.f18148e;
                if (cgzVar == cgzVar2) {
                    exists = Files.exists(path3, new LinkOption[0]);
                }
                try {
                    ghcVar.f18149f.clear();
                    ghcVar.f18150g.clear();
                    ghcVar.f18146c.clear();
                    ghcVar.f18147d.clear();
                    ghcVar.h(dwgVar);
                    ghcVar.i();
                } catch (Exception e2) {
                    absolutePath2 = path3.toAbsolutePath();
                    f19862a.b(absolutePath2, "Failed to save deobfuscation map file '{}'", e2);
                }
            }
        }
        if (urVar.o == dyx.JSON) {
            atj.c(dwgVar);
        }
    }
}
