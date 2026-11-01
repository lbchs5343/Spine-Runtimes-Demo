package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.kk;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class mn<T> extends p<List<T>, T> {
    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* synthetic */ Object dq(final d dVar, Object obj) throws Throwable {
        List list = (List) obj;
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        final CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        for (final Object obj2 : list) {
            com.bykv.vk.openvk.preload.geckox.p.ox().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.d.mn.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        try {
                            try {
                                copyOnWriteArrayList.add(dVar.dq((d) obj2));
                            } finally {
                                countDownLatch.countDown();
                            }
                        } catch (kk.dq e2) {
                            Throwable cause = e2.getCause();
                            copyOnWriteArrayList2.add(cause);
                            mn.this.dq(cause);
                        }
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        countDownLatch.countDown();
                    }
                }
            });
        }
        countDownLatch.await();
        if (copyOnWriteArrayList2.isEmpty()) {
            return copyOnWriteArrayList;
        }
        throw new com.bykv.vk.openvk.preload.d.dq.dq(copyOnWriteArrayList2);
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        if (objArr != null) {
            if (objArr.length != 1) {
                throw new IllegalArgumentException("ParallelInterceptor only need one param");
            }
            if (!(objArr[0] instanceof Executor)) {
                throw new IllegalArgumentException("ParallelInterceptor args must be instance of Executor");
            }
        }
    }
}
