package com.bykv.vk.openvk.preload.geckox.utils;

import android.os.Process;
import g.awf;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FileLock {
    private static final Map<String, Integer> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final int f684d;
    private final String ox;

    static {
        System.loadLibrary("file_lock_pg");
    }

    private FileLock(String str, int i) {
        this.ox = str;
        this.f684d = i;
    }

    public static FileLock d(String str) {
        try {
            int p = p(str);
            if (nTryLock(p)) {
                return new FileLock(str, p);
            }
            return null;
        } catch (Exception e2) {
            StringBuilder p2 = awf.p("try lock failed, file:", str, " caused by:");
            p2.append(e2.getMessage());
            throw new RuntimeException(p2.toString());
        }
    }

    public static FileLock dq(String str) {
        try {
            int p = p(str);
            nLockFile(p);
            return new FileLock(str, p);
        } catch (Exception e2) {
            StringBuilder p2 = awf.p("lock failed, file:", str, ", pid:");
            p2.append(Process.myPid());
            p2.append(" caused by:");
            p2.append(e2.getMessage());
            throw new RuntimeException(p2.toString());
        }
    }

    public static FileLock dq(String str, int i) {
        try {
            int p = p(str);
            nLockFileSegment(p, i);
            return new FileLock(str, p);
        } catch (Exception e2) {
            StringBuilder p2 = awf.p("lock segment failed, file:", str, " caused by:");
            p2.append(e2.getMessage());
            throw new RuntimeException(p2.toString());
        }
    }

    private static native int nGetFD(String str) throws Exception;

    private static native void nLockFile(int i) throws Exception;

    private static native void nLockFileSegment(int i, int i2) throws Exception;

    private static native void nRelease(int i) throws Exception;

    private static native boolean nTryLock(int i) throws Exception;

    private static native void nUnlockFile(int i) throws Exception;

    public static FileLock ox(String str) throws Exception {
        try {
            int p = p(str);
            if (nTryLock(p)) {
                return new FileLock(str, p);
            }
            new FileLock(str, p).d();
            return null;
        } catch (Exception e2) {
            StringBuilder p2 = awf.p("try lock failed, file:", str, " caused by:");
            p2.append(e2.getMessage());
            throw new RuntimeException(p2.toString());
        }
    }

    private static int p(String str) throws Exception {
        Integer num;
        Map<String, Integer> map = dq;
        synchronized (map) {
            try {
                num = map.get(str);
                if (num == null) {
                    new File(str).getParentFile().mkdirs();
                    num = Integer.valueOf(nGetFD(str));
                    map.put(str, num);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return num.intValue();
    }

    public final void d() {
        Integer remove;
        Map<String, Integer> map = dq;
        synchronized (map) {
            remove = map.remove(this.ox);
        }
        try {
            nRelease(remove.intValue());
        } catch (Exception e2) {
            throw new RuntimeException("release lock failed, file:" + this.ox + " caused by:" + e2.getMessage());
        }
    }

    public final void dq() {
        try {
            nUnlockFile(this.f684d);
        } catch (Exception unused) {
            throw new RuntimeException("release lock failed，path:" + this.ox);
        }
    }
}
