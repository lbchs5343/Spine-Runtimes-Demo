package g;

import android.text.Layout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzcr;

/* loaded from: classes3.dex */
public final class gpt {
    public CharSequence j;

    /* renamed from: e, reason: collision with root package name */
    public long f18552e = 0;
    public long h = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f18550c = 2;

    /* renamed from: d, reason: collision with root package name */
    public float f18551d = -3.4028235E38f;

    /* renamed from: f, reason: collision with root package name */
    public int f18553f = 1;
    public int k = 0;

    /* renamed from: a, reason: collision with root package name */
    public float f18548a = -3.4028235E38f;

    /* renamed from: g, reason: collision with root package name */
    public int f18554g = Integer.MIN_VALUE;
    public float i = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f18549b = Integer.MIN_VALUE;

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0073, code lost:
    
        if (r4 == 0) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzcr l() {
        Layout.Alignment alignment;
        float f2;
        CharSequence charSequence;
        float f3 = this.f18548a;
        float f4 = -3.4028235E38f;
        if (f3 == -3.4028235E38f) {
            int i = this.f18550c;
            f3 = i != 4 ? i != 5 ? 0.5f : 1.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int i2 = this.f18554g;
        if (i2 == Integer.MIN_VALUE) {
            int i3 = this.f18550c;
            if (i3 != 1) {
                if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 != 5) {
                            i2 = 1;
                        }
                    }
                }
                i2 = 2;
            }
            i2 = 0;
        }
        zzcr zzcrVar = new zzcr();
        int i4 = this.f18550c;
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        if (i4 != 5) {
                            dub.g(i4, "Unknown textAlignment: ", "WebvttCueParser");
                            alignment = null;
                        }
                    }
                }
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            zzcrVar.zzm(alignment);
            f2 = this.f18551d;
            int i5 = this.f18553f;
            if (f2 != -3.4028235E38f || i5 != 0 || (f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f2 <= 1.0f)) {
                if (f2 == -3.4028235E38f) {
                    f4 = f2;
                }
                zzcrVar.zze(f4, i5);
                zzcrVar.zzf(this.k);
                zzcrVar.zzh(f3);
                zzcrVar.zzi(i2);
                float f5 = this.i;
                if (i2 == 0) {
                    f3 = 1.0f - f3;
                } else if (i2 != 1) {
                    if (i2 != 2) {
                        throw new IllegalStateException(String.valueOf(i2));
                    }
                } else if (f3 <= 0.5f) {
                    f3 += f3;
                } else {
                    float f6 = 1.0f - f3;
                    f3 = f6 + f6;
                }
                zzcrVar.zzk(Math.min(f5, f3));
                zzcrVar.zzo(this.f18549b);
                charSequence = this.j;
                if (charSequence != null) {
                    zzcrVar.zzl(charSequence);
                }
                return zzcrVar;
            }
            f4 = 1.0f;
            zzcrVar.zze(f4, i5);
            zzcrVar.zzf(this.k);
            zzcrVar.zzh(f3);
            zzcrVar.zzi(i2);
            float f52 = this.i;
            if (i2 == 0) {
            }
            zzcrVar.zzk(Math.min(f52, f3));
            zzcrVar.zzo(this.f18549b);
            charSequence = this.j;
            if (charSequence != null) {
            }
            return zzcrVar;
        }
        alignment = Layout.Alignment.ALIGN_NORMAL;
        zzcrVar.zzm(alignment);
        f2 = this.f18551d;
        int i52 = this.f18553f;
        if (f2 != -3.4028235E38f) {
        }
        if (f2 == -3.4028235E38f) {
        }
        zzcrVar.zze(f4, i52);
        zzcrVar.zzf(this.k);
        zzcrVar.zzh(f3);
        zzcrVar.zzi(i2);
        float f522 = this.i;
        if (i2 == 0) {
        }
        zzcrVar.zzk(Math.min(f522, f3));
        zzcrVar.zzo(this.f18549b);
        charSequence = this.j;
        if (charSequence != null) {
        }
        return zzcrVar;
    }
}
