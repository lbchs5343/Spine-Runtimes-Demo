package com.bykv.vk.openvk.preload.geckox.mn;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class d {
    private String ox;
    private FileLock p;
    private static final Map<String, Lock> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private static ReentrantLock f659d = new ReentrantLock();

    private d(String str, FileLock fileLock) {
        this.ox = str;
        this.p = fileLock;
    }

    public static d dq(String str) throws Exception {
        f659d.lock();
        try {
            FileLock dq2 = FileLock.dq(str);
            Map<String, Lock> map = dq;
            Lock lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
            lock.lock();
            return new d(str, dq2);
        } catch (Exception e2) {
            f659d.unlock();
            throw e2;
        }
    }

    public final void dq() {
        try {
            this.p.dq();
            this.p.d();
            Lock lock = dq.get(this.ox);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f659d.unlock();
        }
    }
}
