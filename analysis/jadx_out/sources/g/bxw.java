package g;

import com.google.android.gms.internal.ads.zzacs;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public final class bxw {

    /* renamed from: a, reason: collision with root package name */
    public fc f12409a;

    /* renamed from: b, reason: collision with root package name */
    public int f12410b;

    /* renamed from: d, reason: collision with root package name */
    public int f12412d;

    /* renamed from: g, reason: collision with root package name */
    public long f12415g;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f12411c = new byte[8];

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f12413e = new ArrayDeque();

    /* renamed from: f, reason: collision with root package name */
    public final gvg f12414f = new gvg(0);

    public final long h(zzacs zzacsVar, int i) {
        zzacsVar.zzi(this.f12411c, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (r0[i2] & 255);
        }
        return j;
    }
}
