package g;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class dvy {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f14910a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public FileChannel f14911b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14912c;

    /* renamed from: d, reason: collision with root package name */
    public final File f14913d;

    /* renamed from: e, reason: collision with root package name */
    public final Lock f14914e;

    public dvy(File file, String str, boolean z) {
        Lock lock;
        this.f14912c = z;
        this.f14913d = file != null ? new File(file, str.concat(".lck")) : null;
        HashMap hashMap = f14910a;
        synchronized (hashMap) {
            try {
                Object obj = hashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    hashMap.put(str, obj);
                }
                lock = (Lock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f14914e = lock;
    }

    public final void f(boolean z) {
        this.f14914e.lock();
        if (z) {
            File file = this.f14913d;
            try {
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                channel.lock();
                this.f14911b = channel;
            } catch (IOException unused) {
                this.f14911b = null;
            }
        }
    }

    public final void g() {
        try {
            FileChannel fileChannel = this.f14911b;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f14914e.unlock();
    }
}
