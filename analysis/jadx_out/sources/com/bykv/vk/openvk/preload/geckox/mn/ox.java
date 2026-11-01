package com.bykv.vk.openvk.preload.geckox.mn;

import android.os.Process;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import com.bykv.vk.openvk.preload.geckox.utils.iw;
import com.bykv.vk.openvk.preload.geckox.utils.p;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class ox {
    private static final Map<String, Pair<FileLock, AtomicLong>> dq = new HashMap();

    public static void d(String str) throws Exception {
        Map<String, Pair<FileLock, AtomicLong>> map = dq;
        synchronized (map) {
            try {
                FileLock d2 = FileLock.d(str);
                if (d2 == null) {
                    return;
                }
                Pair<FileLock, AtomicLong> pair = map.get(str);
                if (pair != null && ((AtomicLong) pair.second).get() != 0) {
                    d2.dq();
                    FileLock.dq(str, Process.myPid());
                    return;
                }
                File parentFile = new File(str).getParentFile();
                final File file = new File(parentFile.getAbsolutePath() + "--pending-delete");
                if (parentFile.renameTo(file)) {
                    d2.dq();
                    d2.d();
                    iw.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.mn.ox.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            p.dq(file);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(String str) throws Exception {
        Map<String, Pair<FileLock, AtomicLong>> map = dq;
        synchronized (map) {
            try {
                Pair<FileLock, AtomicLong> pair = map.get(str);
                if (pair == null) {
                    Pair<FileLock, AtomicLong> pair2 = new Pair<>(FileLock.dq(str, Process.myPid()), new AtomicLong(0L));
                    map.put(str, pair2);
                    pair = pair2;
                }
                ((AtomicLong) pair.second).incrementAndGet();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
