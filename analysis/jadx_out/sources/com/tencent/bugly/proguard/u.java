package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.bbi;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public static final long f9802a = System.currentTimeMillis();

    /* renamed from: b, reason: collision with root package name */
    private static u f9803b;

    /* renamed from: c, reason: collision with root package name */
    private Context f9804c;

    /* renamed from: f, reason: collision with root package name */
    private SharedPreferences f9807f;

    /* renamed from: e, reason: collision with root package name */
    private Map<Integer, Map<String, t>> f9806e = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private String f9805d = aa.b().f9537d;

    private u(Context context) {
        this.f9804c = context;
        this.f9807f = context.getSharedPreferences("crashrecord", 0);
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            uVar = f9803b;
        }
        return uVar;
    }

    public static synchronized u a(Context context) {
        u uVar;
        synchronized (u.class) {
            try {
                if (f9803b == null) {
                    f9803b = new u(context);
                }
                uVar = f9803b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004c A[Catch: all -> 0x002a, Exception -> 0x0050, TRY_ENTER, TryCatch #1 {Exception -> 0x0050, blocks: (B:9:0x0006, B:15:0x0025, B:30:0x004c, B:31:0x004f, B:22:0x0043), top: B:8:0x0006, outer: #3 }] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized <T extends List<?>> void a(int i, T t) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        IOException e2;
        if (t == null) {
            return;
        }
        try {
            ObjectOutputStream dir = this.f9804c.getDir("crashrecord", 0);
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File((File) dir, String.valueOf(i))));
                    try {
                        objectOutputStream.writeObject(t);
                        objectOutputStream.close();
                    } catch (IOException e3) {
                        e2 = e3;
                        e2.printStackTrace();
                        al.a("open record file error", new Object[0]);
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (dir != 0) {
                        dir.close();
                    }
                    throw th;
                }
            } catch (IOException e4) {
                objectOutputStream = null;
                e2 = e4;
            } catch (Throwable th3) {
                dir = 0;
                th = th3;
                if (dir != 0) {
                }
                throw th;
            }
        } catch (Exception unused) {
            al.e("writeCrashRecord error", new Object[0]);
        }
    }

    public static /* synthetic */ boolean a(t tVar, t tVar2) {
        String str;
        return tVar.f9801g == tVar2.f9801g && (str = tVar.f9796b) != null && str.equalsIgnoreCase(tVar2.f9796b);
    }

    public static /* synthetic */ boolean b(t tVar, t tVar2) {
        String str = tVar.f9799e;
        if (str != null && !str.equalsIgnoreCase(tVar2.f9799e)) {
            return true;
        }
        String str2 = tVar.f9800f;
        return !(str2 == null || str2.equalsIgnoreCase(tVar2.f9800f)) || tVar.f9798d <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean c(int i) {
        try {
            try {
                List<t> d2 = d(i);
                if (d2 == null) {
                    return false;
                }
                long currentTimeMillis = System.currentTimeMillis();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (t tVar : d2) {
                    String str = tVar.f9796b;
                    if (str != null && str.equalsIgnoreCase(this.f9805d) && tVar.f9798d > 0) {
                        arrayList.add(tVar);
                    }
                    if (tVar.f9797c + AdBaseConstants.DEFAULT_DELAY_TIMESTAMP < currentTimeMillis) {
                        arrayList2.add(tVar);
                    }
                }
                Collections.sort(arrayList);
                if (arrayList.size() < 2) {
                    d2.removeAll(arrayList2);
                    a(i, (int) d2);
                    return false;
                }
                if (arrayList.size() <= 0 || ((t) arrayList.get(arrayList.size() - 1)).f9797c + AdBaseConstants.DEFAULT_DELAY_TIMESTAMP >= currentTimeMillis) {
                    return true;
                }
                d2.clear();
                a(i, (int) d2);
                return false;
            } catch (Exception unused) {
                al.e("isFrequentCrash failed", new Object[0]);
                return false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
    
        if (r6 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0040, code lost:
    
        if (r6 == null) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized <T extends List<?>> T d(int i) {
        ObjectInputStream objectInputStream;
        try {
            File file = new File(this.f9804c.getDir("crashrecord", 0), String.valueOf(i));
            ObjectInputStream exists = file.exists();
            try {
                if (exists == 0) {
                    return null;
                }
                try {
                    objectInputStream = new ObjectInputStream(new FileInputStream(file));
                    try {
                        T t = (T) objectInputStream.readObject();
                        objectInputStream.close();
                        return t;
                    } catch (IOException unused) {
                        al.a("open record file error", new Object[0]);
                    } catch (ClassNotFoundException unused2) {
                        al.a("get object error", new Object[0]);
                    }
                } catch (IOException unused3) {
                    objectInputStream = null;
                } catch (ClassNotFoundException unused4) {
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    exists = 0;
                    if (exists != 0) {
                        exists.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            al.e("readCrashRecord error", new Object[0]);
        }
        return null;
    }

    public final void a(int i) {
        ak.a().a(new bbi(this, i, 0));
    }

    public final synchronized boolean b(int i) {
        boolean z;
        z = true;
        try {
            z = this.f9807f.getBoolean(i + "_" + this.f9805d, true);
            ak.a().a(new bbi(this, i, 1));
        } catch (Exception unused) {
            al.e("canInit error", new Object[0]);
            return z;
        }
        return z;
    }
}
