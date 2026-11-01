package g;

import android.os.IBinder;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzfvf;

/* loaded from: classes3.dex */
public final class fqe extends zzfve {

    /* renamed from: a, reason: collision with root package name */
    public float f17233a;

    /* renamed from: b, reason: collision with root package name */
    public int f17234b;

    /* renamed from: c, reason: collision with root package name */
    public IBinder f17235c;

    /* renamed from: d, reason: collision with root package name */
    public String f17236d;

    /* renamed from: e, reason: collision with root package name */
    public String f17237e;

    /* renamed from: f, reason: collision with root package name */
    public int f17238f;

    /* renamed from: g, reason: collision with root package name */
    public byte f17239g;

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zza(String str) {
        this.f17236d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzb(String str) {
        this.f17237e = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzc(int i) {
        this.f17239g = (byte) (this.f17239g | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzd(int i) {
        this.f17238f = i;
        this.f17239g = (byte) (this.f17239g | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zze(float f2) {
        this.f17233a = f2;
        this.f17239g = (byte) (this.f17239g | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzf(int i) {
        this.f17239g = (byte) (this.f17239g | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzg(IBinder iBinder) {
        if (iBinder == null) {
            throw new NullPointerException("Null windowToken");
        }
        this.f17235c = iBinder;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfve zzh(int i) {
        this.f17234b = i;
        this.f17239g = (byte) (this.f17239g | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final zzfvf zzi() {
        IBinder iBinder;
        if (this.f17239g == 31 && (iBinder = this.f17235c) != null) {
            return new hde(iBinder, this.f17237e, this.f17238f, this.f17233a, this.f17234b, this.f17236d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f17235c == null) {
            sb.append(" windowToken");
        }
        if ((this.f17239g & 1) == 0) {
            sb.append(" layoutGravity");
        }
        if ((this.f17239g & 2) == 0) {
            sb.append(" layoutVerticalMargin");
        }
        if ((this.f17239g & 4) == 0) {
            sb.append(" displayMode");
        }
        if ((this.f17239g & 8) == 0) {
            sb.append(" triggerMode");
        }
        if ((this.f17239g & 16) == 0) {
            sb.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
