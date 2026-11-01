package g;

import com.google.android.gms.internal.ads.zzfvg;
import com.google.android.gms.internal.ads.zzfvh;

/* loaded from: classes3.dex */
public final class fpb extends zzfvg {

    /* renamed from: a, reason: collision with root package name */
    public int f17182a;

    /* renamed from: b, reason: collision with root package name */
    public String f17183b;

    /* renamed from: c, reason: collision with root package name */
    public byte f17184c;

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final zzfvg zza(String str) {
        this.f17183b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final zzfvg zzb(int i) {
        this.f17182a = i;
        this.f17184c = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final zzfvh zzc() {
        if (this.f17184c == 1) {
            return new gty(this.f17182a, this.f17183b);
        }
        throw new IllegalStateException("Missing required properties: statusCode");
    }
}
