package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcy;

/* loaded from: classes3.dex */
public final class ggv extends zzbcy {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18132a;

    public static final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < str.length() && str.charAt(i2) == ',') {
            i2++;
        }
        while (length > 0) {
            int i3 = length - 1;
            if (str.charAt(i3) != ',') {
                break;
            }
            length = i3;
        }
        if (length < i2) {
            return null;
        }
        if (i2 != 0) {
            i = i2;
        } else if (length == str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    @Override // com.google.android.gms.internal.ads.zzbcy
    public final String zza(String str, String str2) {
        switch (this.f18132a) {
            case 0:
                return str2;
            case 1:
                return str != null ? str : str2;
            default:
                String b2 = b(str);
                String b3 = b(str2);
                return TextUtils.isEmpty(b2) ? b3 : TextUtils.isEmpty(b3) ? b2 : awf.i(b2, ",", b3);
        }
    }
}
