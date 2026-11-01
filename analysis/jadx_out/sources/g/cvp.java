package g;

import java.io.File;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class cvp implements axw {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f13599a = dsr.k(cvp.class);

    /* renamed from: b, reason: collision with root package name */
    public final Set f13600b;

    /* renamed from: c, reason: collision with root package name */
    public final ctk f13601c;

    public cvp(EnumSet enumSet) {
        this.f13600b = enumSet;
        this.f13601c = enumSet.contains(nd.SECURE_ZIP_READER) ? new ahh() : acq.f9985e;
    }

    @Override // g.ctk
    public final boolean bt(String str) {
        return this.f13601c.bt(str);
    }

    @Override // g.ctk
    public final boolean bu(File file, File file2) {
        return this.f13601c.bu(file, file2);
    }

    @Override // g.ctk
    public final boolean bv(ffs ffsVar) {
        return this.f13601c.bv(ffsVar);
    }

    @Override // g.ctk
    public final boolean bw() {
        return this.f13601c.bw();
    }

    @Override // g.ctk
    public final int bx() {
        return this.f13601c.bx();
    }
}
