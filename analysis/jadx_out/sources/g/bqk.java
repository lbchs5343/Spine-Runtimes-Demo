package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzfwa;

/* loaded from: classes.dex */
public final class bqk {

    /* renamed from: a, reason: collision with root package name */
    public int f12013a;

    /* renamed from: b, reason: collision with root package name */
    public int f12014b;

    /* renamed from: c, reason: collision with root package name */
    public int f12015c;

    /* renamed from: d, reason: collision with root package name */
    public int f12016d;

    /* renamed from: e, reason: collision with root package name */
    public int f12017e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static bqk f(String str) {
        char c2;
        zzdb.zzd(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            int length = split.length;
            if (i >= length) {
                if (i2 == -1 || i3 == -1 || i4 == -1) {
                    return null;
                }
                bqk bqkVar = new bqk();
                bqkVar.f12015c = i2;
                bqkVar.f12016d = i3;
                bqkVar.f12017e = i5;
                bqkVar.f12013a = i4;
                bqkVar.f12014b = length;
                return bqkVar;
            }
            String zza = zzfwa.zza(split[i].trim());
            switch (zza.hashCode()) {
                case 100571:
                    if (zza.equals("end")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3556653:
                    if (zza.equals("text")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109757538:
                    if (zza.equals("start")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109780401:
                    if (zza.equals("style")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                i2 = i;
            } else if (c2 == 1) {
                i3 = i;
            } else if (c2 == 2) {
                i5 = i;
            } else if (c2 == 3) {
                i4 = i;
            }
            i++;
        }
    }

    public boolean g() {
        int i = this.f12015c;
        int i2 = 2;
        if ((i & 7) != 0) {
            int i3 = this.f12013a;
            int i4 = this.f12016d;
            if (((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 112) != 0) {
            int i5 = this.f12013a;
            int i6 = this.f12017e;
            if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 1792) != 0) {
            int i7 = this.f12014b;
            int i8 = this.f12016d;
            if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                return false;
            }
        }
        if ((i & 28672) != 0) {
            int i9 = this.f12014b;
            int i10 = this.f12017e;
            if (i9 > i10) {
                i2 = 1;
            } else if (i9 != i10) {
                i2 = 4;
            }
            if ((i & (i2 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
