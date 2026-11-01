package com.bykv.vk.openvk.preload.geckox.mn;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class dq {
    private static final Map<String, Lock> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private FileLock f660d;
    private String ox;

    private dq(String str, FileLock fileLock) {
        this.ox = str;
        this.f660d = fileLock;
    }

    public static dq dq(String str) throws Exception {
        Map<String, Lock> map = dq;
        synchronized (map) {
            try {
                Lock lock = map.get(str);
                if (lock == null) {
                    lock = new ReentrantLock();
                    map.put(str, lock);
                }
                if (!lock.tryLock()) {
                    return null;
                }
                try {
                    FileLock ox = FileLock.ox(str);
                    if (ox == null) {
                        lock.unlock();
                        return null;
                    }
                    return new dq(str, ox);
                } catch (Exception e2) {
                    lock.lock();
                    com.bykv.vk.openvk.preload.geckox.utils.ox.dq(new RuntimeException(e2));
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void dq() {
        Map<String, Lock> map = dq;
        synchronized (map) {
            try {
                try {
                    this.f660d.dq();
                    this.f660d.d();
                    map.get(this.ox).unlock();
                } catch (Throwable th) {
                    dq.get(this.ox).unlock();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
