package com.bykv.vk.openvk.component.video.dq.d.dq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.openvk.component.video.dq.d.p;
import com.bykv.vk.openvk.component.video.dq.d.s;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class ox extends com.bykv.vk.openvk.component.video.dq.d.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private final LinkedHashMap<String, File> f529d = new LinkedHashMap<>(0, 0.75f, true);
    public final File dq;
    private volatile float ia;
    private final Set<dq> iw;
    private final d kk;
    private volatile long mn;
    private final Handler no;
    private final Runnable o;
    private final ReentrantReadWriteLock ox;
    private final ReentrantReadWriteLock.ReadLock p;
    private final ReentrantReadWriteLock.WriteLock s;

    public static final class d {
        private final Map<String, Integer> dq;

        private d() {
            this.dq = new HashMap();
        }

        public synchronized void d(String str) {
            Integer num;
            if (!TextUtils.isEmpty(str) && (num = this.dq.get(str)) != null) {
                if (num.intValue() == 1) {
                    this.dq.remove(str);
                    return;
                }
                this.dq.put(str, Integer.valueOf(num.intValue() - 1));
            }
        }

        public synchronized void dq(String str) {
            if (!TextUtils.isEmpty(str)) {
                Integer num = this.dq.get(str);
                if (num == null) {
                    this.dq.put(str, 1);
                    return;
                }
                this.dq.put(str, Integer.valueOf(num.intValue() + 1));
            }
        }

        public synchronized boolean ox(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return this.dq.containsKey(str);
        }
    }

    public interface dq {
        void dq(String str);

        void dq(Set<String> set);
    }

    public ox(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.ox = reentrantReadWriteLock;
        this.p = reentrantReadWriteLock.readLock();
        this.s = reentrantReadWriteLock.writeLock();
        this.iw = Collections.newSetFromMap(new ConcurrentHashMap());
        this.mn = 104857600L;
        this.ia = 0.5f;
        this.kk = new d();
        this.o = new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.1
            @Override // java.lang.Runnable
            public void run() {
                mn.d(new kk("cleanupCmd", 1) { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ox oxVar = ox.this;
                        oxVar.d(oxVar.mn);
                    }
                });
            }
        };
        this.no = new Handler(Looper.getMainLooper());
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            this.dq = file;
            mn.d(new kk("DiskLruCache", 5) { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.d();
                }
            });
            return;
        }
        if (file == null) {
            str = " dir null";
        } else {
            str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
        }
        throw new IOException("dir error!  ".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.s.lock();
        try {
            File[] listFiles = this.dq.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                final HashMap hashMap = new HashMap(listFiles.length);
                ArrayList arrayList = new ArrayList(listFiles.length);
                for (File file : listFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        hashMap.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>() { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.3
                    @Override // java.util.Comparator
                    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        long longValue = ((Long) hashMap.get(file2)).longValue() - ((Long) hashMap.get(file3)).longValue();
                        if (longValue < 0) {
                            return -1;
                        }
                        return longValue > 0 ? 1 : 0;
                    }
                });
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    File file2 = (File) it.next();
                    this.f529d.put(dq(file2), file2);
                }
            }
            this.s.unlock();
            ox();
        } catch (Throwable th) {
            this.s.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e6 A[LOOP:3: B:39:0x00e0->B:41:0x00e6, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(long j) {
        Iterator<dq> it;
        long j2;
        final HashSet hashSet = new HashSet();
        this.s.lock();
        HashSet hashSet2 = null;
        try {
            Iterator<Map.Entry<String, File>> it2 = this.f529d.entrySet().iterator();
            j2 = 0;
            while (it2.hasNext()) {
                j2 += it2.next().getValue().length();
            }
        } catch (Throwable th) {
            th = th;
        }
        if (j2 <= j) {
            return;
        }
        long j3 = (long) (j * this.ia);
        HashSet hashSet3 = new HashSet();
        try {
            for (Map.Entry<String, File> entry : this.f529d.entrySet()) {
                File value = entry.getValue();
                if (value == null || !value.exists()) {
                    hashSet3.add(entry.getKey());
                } else if (!this.kk.ox(dq(value))) {
                    long length = value.length();
                    File file = new File(value.getAbsolutePath() + "-tmp");
                    if (value.renameTo(file)) {
                        hashSet.add(file);
                        j2 -= length;
                        hashSet3.add(entry.getKey());
                    }
                }
                if (j2 <= j3) {
                    break;
                }
            }
            Iterator it3 = hashSet3.iterator();
            while (it3.hasNext()) {
                this.f529d.remove((String) it3.next());
            }
        } catch (Throwable th2) {
            th = th2;
            hashSet2 = hashSet3;
            try {
                th.printStackTrace();
                this.s.unlock();
                hashSet3 = hashSet2;
                it = this.iw.iterator();
                while (it.hasNext()) {
                }
                mn.d(new kk("trimSize", 1) { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it4 = hashSet.iterator();
                        while (it4.hasNext()) {
                            try {
                                ((File) it4.next()).delete();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                });
            } finally {
                this.s.unlock();
            }
        }
        it = this.iw.iterator();
        while (it.hasNext()) {
            it.next().dq(hashSet3);
        }
        mn.d(new kk("trimSize", 1) { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    try {
                        ((File) it4.next()).delete();
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    private String dq(File file) {
        return file.getName();
    }

    private void ox() {
        this.no.removeCallbacks(this.o);
        this.no.postDelayed(this.o, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.kk.d(str);
    }

    public void dq() {
        p.ox().p();
        Context context = s.getContext();
        if (context != null) {
            com.bykv.vk.openvk.component.video.dq.d.d.ox.dq(context).dq(0);
        }
        this.no.removeCallbacks(this.o);
        mn.d(new kk("clear", 1) { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.ox.4
            @Override // java.lang.Runnable
            public void run() {
                ox.this.d(0L);
            }
        });
    }

    public void dq(long j) {
        this.mn = j;
        ox();
    }

    public void dq(dq dqVar) {
        if (dqVar != null) {
            this.iw.add(dqVar);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.kk.dq(str);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public File ox(String str) {
        this.p.lock();
        File file = this.f529d.get(str);
        this.p.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.dq, str);
        this.s.lock();
        this.f529d.put(str, file2);
        this.s.unlock();
        Iterator<dq> it = this.iw.iterator();
        while (it.hasNext()) {
            it.next().dq(str);
        }
        ox();
        return file2;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public File p(String str) {
        if (!this.p.tryLock()) {
            return null;
        }
        File file = this.f529d.get(str);
        this.p.unlock();
        return file;
    }
}
