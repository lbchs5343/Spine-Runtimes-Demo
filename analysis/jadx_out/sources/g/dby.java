package g;

import com.google.android.gms.internal.ads.zzacc;

/* loaded from: classes3.dex */
public final class dby extends zzacc {
    public static /* bridge */ /* synthetic */ int f(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
