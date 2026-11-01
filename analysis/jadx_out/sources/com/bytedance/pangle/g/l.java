package com.bytedance.pangle.g;

import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.bytedance.pangle.util.FieldUtils;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class l implements k {

    /* renamed from: a, reason: collision with root package name */
    private static final long f1441a = Os.sysconf(OsConstants._SC_PAGESIZE);

    /* renamed from: b, reason: collision with root package name */
    private final FileDescriptor f1442b;

    /* renamed from: c, reason: collision with root package name */
    private final long f1443c;

    /* renamed from: d, reason: collision with root package name */
    private final long f1444d;

    public l(FileDescriptor fileDescriptor, long j, long j2) {
        this.f1442b = fileDescriptor;
        this.f1443c = j;
        this.f1444d = j2;
    }

    @Override // com.bytedance.pangle.g.k
    public final long a() {
        return this.f1444d;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:0|1|2|3|4|(12:71|72|7|9|10|11|(8:51|52|53|(1:55)|23|24|25|(3:27|28|29)(1:34))(8:15|16|(1:18)|(1:20)|23|24|25|(0)(0))|21|23|24|25|(0)(0))|6|7|9|10|11|(1:13)|51|52|53|(0)|23|24|25|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011c, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0108, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0118, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0106, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0114, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0104, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0110, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0102, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010c, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e8 A[Catch: all -> 0x0088, Exception -> 0x0102, InvocationTargetException -> 0x0104, InstantiationException -> 0x0106, IllegalAccessException -> 0x0108, ClassNotFoundException -> 0x010a, TRY_LEAVE, TryCatch #2 {all -> 0x0088, blocks: (B:10:0x004f, B:16:0x0061, B:18:0x0083, B:20:0x0097, B:24:0x0120, B:50:0x00bf, B:47:0x00c6, B:44:0x00ca, B:41:0x00ce, B:38:0x00d2, B:53:0x00d8, B:55:0x00e8, B:66:0x010c, B:64:0x0110, B:62:0x0114, B:60:0x0118, B:58:0x011c, B:69:0x012c, B:70:0x0144), top: B:2:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.bytedance.pangle.g.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(j jVar, long j, int i) {
        int intValue;
        long mmap;
        int i2;
        Class<?> cls;
        Class<?> cls2;
        Constructor<?> declaredConstructor;
        ByteBuffer byteBuffer;
        long j2 = this.f1443c + j;
        long j3 = f1441a;
        long j4 = (j2 / j3) * j3;
        int i3 = (int) (j2 - j4);
        long j5 = i + i3;
        try {
            try {
                try {
                    ByteBuffer byteBuffer2 = null;
                    try {
                        if (com.bytedance.pangle.util.i.h()) {
                            try {
                                intValue = ((Integer) FieldUtils.readField(OsConstants.class.getField("MAP_POPULATE"), (Object) null)).intValue();
                            } catch (IllegalAccessException e2) {
                                e2.printStackTrace();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            mmap = Os.mmap(0L, j5, OsConstants.PROT_READ, OsConstants.MAP_SHARED | intValue, this.f1442b, j4);
                            i2 = Build.VERSION.SDK_INT;
                            cls = Long.TYPE;
                            cls2 = Integer.TYPE;
                            if (i2 >= 24 || i2 > 28) {
                                declaredConstructor = Class.forName("java.nio.DirectByteBuffer").getDeclaredConstructor(cls, cls2);
                                if (declaredConstructor != null) {
                                    declaredConstructor.setAccessible(true);
                                    byteBuffer = (ByteBuffer) declaredConstructor.newInstance(Long.valueOf(i3 + mmap), Integer.valueOf(i));
                                }
                                jVar.a(byteBuffer2);
                                if (mmap == 0) {
                                    try {
                                        Os.munmap(mmap, j5);
                                        return;
                                    } catch (ErrnoException unused) {
                                        return;
                                    }
                                }
                                return;
                            }
                            try {
                                Class<?> cls3 = Class.forName("java.nio.DirectByteBuffer");
                                Class<?>[] clsArr = {cls2, cls, FileDescriptor.class, Runnable.class, Boolean.TYPE};
                                Constructor<?> constructor = cls3.getConstructor(clsArr);
                                if (constructor == null) {
                                    constructor = cls3.getDeclaredConstructor(clsArr);
                                }
                                if (constructor != null) {
                                    constructor.setAccessible(true);
                                    byteBuffer = (ByteBuffer) constructor.newInstance(Integer.valueOf(i), Long.valueOf(i3 + mmap), this.f1442b, null, Boolean.TRUE);
                                }
                            } catch (ClassNotFoundException e4) {
                                e4.printStackTrace();
                            } catch (IllegalAccessException e5) {
                                e5.printStackTrace();
                            } catch (InstantiationException e6) {
                                e6.printStackTrace();
                            } catch (InvocationTargetException e7) {
                                e7.printStackTrace();
                            } catch (Exception e8) {
                                e8.printStackTrace();
                            }
                            jVar.a(byteBuffer2);
                            if (mmap == 0) {
                            }
                            byteBuffer2 = byteBuffer;
                            jVar.a(byteBuffer2);
                            if (mmap == 0) {
                            }
                        }
                        i2 = Build.VERSION.SDK_INT;
                        cls = Long.TYPE;
                        cls2 = Integer.TYPE;
                        if (i2 >= 24) {
                        }
                        declaredConstructor = Class.forName("java.nio.DirectByteBuffer").getDeclaredConstructor(cls, cls2);
                        if (declaredConstructor != null) {
                        }
                        jVar.a(byteBuffer2);
                        if (mmap == 0) {
                        }
                    } catch (ErrnoException e9) {
                        e = e9;
                        throw new IOException("Failed to mmap " + j5 + " bytes", e);
                    }
                    intValue = 0;
                    mmap = Os.mmap(0L, j5, OsConstants.PROT_READ, OsConstants.MAP_SHARED | intValue, this.f1442b, j4);
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        try {
                            Os.munmap(0L, j5);
                        } catch (ErrnoException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                }
                throw th;
            }
        } catch (ErrnoException e10) {
            e = e10;
        }
    }
}
