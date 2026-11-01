package g;

import com.google.android.gms.internal.ads.zzgvu;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes3.dex */
public abstract class cry {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f13407a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13408b;

    public cry(byte[] bArr, int i) {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f13407a = bpw.b(bArr);
        this.f13408b = i;
    }

    public final ByteBuffer c(int i, byte[] bArr) {
        int[] zzb = zzb(bpw.b(bArr), i);
        int[] iArr = (int[]) zzb.clone();
        bpw.d(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            zzb[i2] = zzb[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zzb, 0, 16);
        return order;
    }

    public abstract int zza();

    public abstract int[] zzb(int[] iArr, int i);

    public final byte[] zzd(byte[] bArr, ByteBuffer byteBuffer) throws GeneralSecurityException {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length != zza()) {
            throw new GeneralSecurityException(awf.ac(zza(), "The nonce length (in bytes) must be "));
        }
        int remaining = byteBuffer.remaining();
        int i = remaining / 64;
        for (int i2 = 0; i2 < i + 1; i2++) {
            ByteBuffer c2 = c(this.f13408b + i2, bArr);
            if (i2 == i) {
                zzgvu.zza(allocate, byteBuffer, c2, remaining % 64);
            } else {
                zzgvu.zza(allocate, byteBuffer, c2, 64);
            }
        }
        return allocate.array();
    }
}
