package g;

import com.google.android.gms.internal.ads.zzfsg;
import com.google.android.gms.internal.ads.zzfsh;

/* loaded from: classes3.dex */
public final class cmm extends zzfsg {

    /* renamed from: a, reason: collision with root package name */
    public int f13123a;

    /* renamed from: b, reason: collision with root package name */
    public String f13124b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13125c;

    /* renamed from: d, reason: collision with root package name */
    public byte f13126d;

    @Override // com.google.android.gms.internal.ads.zzfsg
    public final zzfsg zzb(boolean z) {
        this.f13126d = (byte) (this.f13126d | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfsg
    public final zzfsh zzd() {
        if (this.f13126d == 3 && this.f13124b != null && this.f13123a != 0) {
            return new e(this.f13124b, this.f13125c, this.f13123a);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f13124b == null) {
            sb.append(" fileOwner");
        }
        if ((this.f13126d & 1) == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if ((this.f13126d & 2) == 0) {
            sb.append(" skipChecks");
        }
        if (this.f13123a == 0) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzfsg
    public final zzfsg zze(int i) {
        this.f13123a = 1;
        return this;
    }
}
