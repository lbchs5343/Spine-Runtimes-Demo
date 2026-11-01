package g;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzqw;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class gra implements fum {

    /* renamed from: a, reason: collision with root package name */
    public Object f18626a;

    /* renamed from: c, reason: collision with root package name */
    public long f18627c;

    /* renamed from: d, reason: collision with root package name */
    public long f18628d;

    public gra() {
        this.f18627c = -9223372036854775807L;
        this.f18628d = -9223372036854775807L;
    }

    public gra(long j) {
        this.f18628d = Long.MIN_VALUE;
        this.f18626a = new Object();
        this.f18627c = j;
    }

    public gra(FileChannel fileChannel, long j, long j2) {
        this.f18626a = fileChannel;
        this.f18627c = j;
        this.f18628d = j2;
    }

    @Override // g.fum
    public void b(MessageDigest[] messageDigestArr, long j, int i) {
        MappedByteBuffer map = ((FileChannel) this.f18626a).map(FileChannel.MapMode.READ_ONLY, this.f18627c + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    public void e(Exception exc) {
        boolean z;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (((Exception) this.f18626a) == null) {
            this.f18626a = exc;
        }
        if (this.f18627c == -9223372036854775807L) {
            synchronized (zzqw.f8853c) {
                z = zzqw.f8851a > 0;
            }
            if (!z) {
                this.f18627c = 200 + elapsedRealtime;
            }
        }
        long j = this.f18627c;
        if (j == -9223372036854775807L || elapsedRealtime < j) {
            this.f18628d = elapsedRealtime + 50;
            return;
        }
        Exception exc2 = (Exception) this.f18626a;
        if (exc2 != exc) {
            exc2.addSuppressed(exc);
        }
        Exception exc3 = (Exception) this.f18626a;
        this.f18626a = null;
        this.f18627c = -9223372036854775807L;
        this.f18628d = -9223372036854775807L;
        throw exc3;
    }

    public boolean f() {
        synchronized (this.f18626a) {
            try {
                ti.f20033a.v.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (this.f18628d + this.f18627c > elapsedRealtime) {
                    return false;
                }
                this.f18628d = elapsedRealtime;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.fum
    public long zza() {
        return this.f18628d;
    }
}
