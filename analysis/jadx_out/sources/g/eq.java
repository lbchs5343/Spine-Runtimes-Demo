package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzasf;
import com.google.android.gms.internal.ads.zzata;
import com.google.android.gms.internal.ads.zzato;
import com.google.android.gms.internal.ads.zzatp;
import com.google.android.gms.internal.ads.zzatr;
import com.google.android.gms.internal.ads.zzaup;
import com.google.android.gms.internal.ads.zzgxp;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class eq {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f15967c;

    /* renamed from: d, reason: collision with root package name */
    public static MessageDigest f15968d;

    /* renamed from: e, reason: collision with root package name */
    public static final Object f15969e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final Object f15965a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final CountDownLatch f15966b = new CountDownLatch(1);

    public static byte[] f(String str, byte[] bArr, boolean z) {
        byte[] array;
        int length = bArr.length;
        int i = true != z ? MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE : 239;
        if (length > i) {
            zzasf zza = zzata.zza();
            zza.zzD(4096L);
            bArr = ((zzata) zza.zzbr()).zzaV();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b2 = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i2).put(b2).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i2).put(b2).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(i(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzaup zzaupVar = new zzaup();
        for (int i3 = 0; i3 < 12; i3++) {
            zzaupVar.az[i3].zza(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzatr(str.getBytes("UTF-8")).zza(bArr3);
        }
        return bArr3;
    }

    public static zzato g(String str, byte[] bArr) {
        Vector vector;
        int length = bArr.length;
        if (length > 0) {
            int i = length + MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE;
            vector = new Vector();
            for (int i2 = 0; i2 < i / MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE; i2++) {
                int i3 = i2 * MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                try {
                    int length2 = bArr.length;
                    if (length2 - i3 > 255) {
                        length2 = i3 + MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                    }
                    vector.add(Arrays.copyOfRange(bArr, i3, length2));
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (vector != null || vector.isEmpty()) {
                return null;
            }
            zzato zza = zzatp.zza();
            int size = vector.size();
            for (int i4 = 0; i4 < size; i4++) {
                zza.zza(zzgxp.zzv(f(str, (byte[]) vector.get(i4), false), 0, 256));
            }
            byte[] i5 = i(bArr);
            zzgxp zzgxpVar = zzgxp.zzb;
            zza.zzb(zzgxp.zzv(i5, 0, i5.length));
            return zza;
        }
        vector = null;
        if (vector != null) {
        }
        return null;
    }

    public static void h() {
        synchronized (f15965a) {
            try {
                if (!f15967c) {
                    f15967c = true;
                    new Thread(new foq(5)).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        r1.reset();
        r1.update(r6);
        r6 = g.eq.f15968d.digest();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] i(byte[] bArr) {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (f15969e) {
            try {
                h();
                MessageDigest messageDigest2 = null;
                try {
                    if (f15966b.await(2L, TimeUnit.SECONDS) && (messageDigest = f15968d) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                throw new NoSuchAlgorithmException("Cannot compute hash");
            } finally {
            }
        }
        return digest;
        throw new NoSuchAlgorithmException("Cannot compute hash");
    }
}
