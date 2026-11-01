package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcn;

/* loaded from: classes3.dex */
public final class fow {

    /* renamed from: a, reason: collision with root package name */
    public long f17167a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f17168b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17169c;

    /* renamed from: d, reason: collision with root package name */
    public final String f17170d;

    /* renamed from: e, reason: collision with root package name */
    public int f17171e;

    public fow(String str, String str2, int i, long j, Integer num) {
        this.f17169c = str;
        this.f17170d = str2;
        this.f17171e = i;
        this.f17167a = j;
        this.f17168b = num;
    }

    public final String toString() {
        Integer num;
        String str = this.f17169c + "." + this.f17171e + "." + this.f17167a;
        String str2 = this.f17170d;
        if (!TextUtils.isEmpty(str2)) {
            str = awf.i(str, ".", str2);
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbI)).booleanValue() || (num = this.f17168b) == null || TextUtils.isEmpty(str2)) {
            return str;
        }
        return str + "." + num;
    }
}
