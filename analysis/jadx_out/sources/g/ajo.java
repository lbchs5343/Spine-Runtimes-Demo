package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class ajo extends gnx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ehi f10326a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10327b = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ajo(cpv cpvVar, bhv bhvVar) {
        super(cpvVar);
        this.f10326a = bhvVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ajo(fsb fsbVar, dsy dsyVar) {
        super(dsyVar);
        this.f10326a = fsbVar;
    }

    @Override // g.gnx, g.cpv
    public long c(clq clqVar, long j) {
        switch (this.f10327b) {
            case 1:
                try {
                    return super.c(clqVar, 8192L);
                } catch (IOException e2) {
                    ((fsb) this.f10326a).f17324a = e2;
                    throw e2;
                }
            default:
                return super.c(clqVar, j);
        }
    }

    @Override // g.gnx, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        switch (this.f10327b) {
            case 0:
                ((bhv) this.f10326a).f11614f.close();
                super.close();
                break;
            default:
                super.close();
                break;
        }
    }
}
