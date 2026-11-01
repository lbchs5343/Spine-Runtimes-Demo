package g;

import com.google.android.gms.internal.ads.zzfwf;

/* loaded from: classes3.dex */
public final class lo extends zzfwf {

    /* renamed from: a, reason: collision with root package name */
    public final char f19609a;

    public lo(char c2) {
        this.f19609a = c2;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i = this.f19609a;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(i & 15);
            i >>= 4;
        }
        return tn.ad("CharMatcher.is('", String.copyValueOf(cArr), "')");
    }

    @Override // com.google.android.gms.internal.ads.zzfwf
    public final boolean zzb(char c2) {
        return c2 == this.f19609a;
    }
}
