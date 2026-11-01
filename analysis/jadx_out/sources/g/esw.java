package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgbz;
import com.google.android.gms.internal.ads.zzgck;
import java.math.RoundingMode;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class esw {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f16103a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16104b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16105c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16106d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16107e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f16108f;

    /* renamed from: g, reason: collision with root package name */
    public final char[] f16109g;
    public final int h;
    public final byte[] i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public esw(String str, char[] cArr) {
        this(str, cArr, r1, false);
        byte[] bArr = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c2 = cArr[i];
            boolean z = true;
            zzfwq.zzg(c2 < 128, "Non-ASCII character: %s", c2);
            if (bArr[c2] != -1) {
                z = false;
            }
            zzfwq.zzg(z, "Duplicate character: %s", c2);
            bArr[c2] = (byte) i;
        }
    }

    public esw(String str, char[] cArr, byte[] bArr, boolean z) {
        this.f16106d = str;
        cArr.getClass();
        this.f16109g = cArr;
        try {
            int length = cArr.length;
            int zzc = zzgck.zzc(length, RoundingMode.UNNECESSARY);
            this.f16104b = zzc;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(zzc);
            int i = 1 << (3 - numberOfTrailingZeros);
            this.f16105c = i;
            this.f16107e = zzc >> numberOfTrailingZeros;
            this.h = length - 1;
            this.i = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.f16107e; i2++) {
                zArr[zzgck.zzb(i2 * 8, this.f16104b, RoundingMode.CEILING)] = true;
            }
            this.f16103a = zArr;
            this.f16108f = z;
        } catch (ArithmeticException e2) {
            throw new IllegalArgumentException(awf.ac(cArr.length, "Illegal alphabet length "), e2);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof esw)) {
            return false;
        }
        esw eswVar = (esw) obj;
        return this.f16108f == eswVar.f16108f && Arrays.equals(this.f16109g, eswVar.f16109g);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16109g) + (true != this.f16108f ? 1237 : 1231);
    }

    public final int j(char c2) {
        if (c2 > 127) {
            throw new zzgbz("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        byte b2 = this.i[c2];
        if (b2 != -1) {
            return b2;
        }
        if (c2 <= ' ' || c2 == 127) {
            throw new zzgbz("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        throw new zzgbz("Unrecognized character: " + c2);
    }

    public final String toString() {
        return this.f16106d;
    }
}
