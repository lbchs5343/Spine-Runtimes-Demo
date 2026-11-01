package g;

import com.google.android.gms.internal.ads.zzacf;

/* loaded from: classes3.dex */
public final class bjp extends zzacf implements deu {

    /* renamed from: g, reason: collision with root package name */
    public final int f11711g;
    public final int h;
    public final long i;
    public final long j;

    public bjp(long j, int i, long j2, int i2) {
        super(j, j2, i, i2, false);
        this.j = j2;
        this.f11711g = i;
        this.h = i2;
        this.i = j != -1 ? j : -1L;
    }

    @Override // g.deu
    public final int zzc() {
        return this.f11711g;
    }

    @Override // g.deu
    public final long zzd() {
        return this.i;
    }
}
