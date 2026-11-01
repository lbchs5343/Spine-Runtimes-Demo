package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import g.ana;
import g.awf;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class ao {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f9589a = true;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f9590b = true;

    /* renamed from: c, reason: collision with root package name */
    private static SimpleDateFormat f9591c = null;

    /* renamed from: d, reason: collision with root package name */
    private static int f9592d = 30720;

    /* renamed from: e, reason: collision with root package name */
    private static StringBuilder f9593e;

    /* renamed from: f, reason: collision with root package name */
    private static StringBuilder f9594f;

    /* renamed from: g, reason: collision with root package name */
    private static boolean f9595g;
    private static a h;
    private static String i;
    private static String j;
    private static Context k;
    private static String l;
    private static boolean m;
    private static boolean n;
    private static ExecutorService o;
    private static int p;
    private static final Object q = new Object();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f9596a;

        /* renamed from: b, reason: collision with root package name */
        File f9597b;

        /* renamed from: c, reason: collision with root package name */
        long f9598c = 30720;

        /* renamed from: d, reason: collision with root package name */
        private String f9599d;

        /* renamed from: e, reason: collision with root package name */
        private long f9600e;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f9599d = str;
            this.f9596a = a();
        }

        public final boolean a() {
            try {
                File file = new File(this.f9599d);
                this.f9597b = file;
                if (file.exists() && !this.f9597b.delete()) {
                    this.f9596a = false;
                    return false;
                }
                if (this.f9597b.createNewFile()) {
                    return true;
                }
                this.f9596a = false;
                return false;
            } catch (Throwable th) {
                al.a(th);
                this.f9596a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            if (!this.f9596a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.f9597b, true);
                try {
                    fileOutputStream2.write(str.getBytes("UTF-8"));
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f9600e += r10.length;
                    this.f9596a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        al.a(th);
                        this.f9596a = false;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    static {
        try {
            f9591c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            al.b(th.getCause());
        }
    }

    private static String a(String str, String str2, String str3, long j2) {
        f9593e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = f9591c;
        String format = simpleDateFormat != null ? simpleDateFormat.format(date) : date.toString();
        StringBuilder sb = f9593e;
        sb.append(format);
        sb.append(" ");
        sb.append(p);
        sb.append(" ");
        sb.append(j2);
        awf.y(sb, " ", str, " ", str2);
        awf.a(": ", str3, "\u0001\r\n", sb);
        return f9593e.toString();
    }

    public static void a(int i2) {
        synchronized (q) {
            try {
                f9592d = i2;
                if (i2 < 0) {
                    f9592d = 0;
                } else if (i2 > 30720) {
                    f9592d = 30720;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized void a(Context context) {
        synchronized (ao.class) {
            if (m || context == null || !f9590b) {
                return;
            }
            try {
                o = Executors.newSingleThreadExecutor();
                f9594f = new StringBuilder(0);
                f9593e = new StringBuilder(0);
                k = context;
                i = aa.a(context).f9537d;
                j = "";
                l = k.getFilesDir().getPath() + "/buglylog_" + i + "_" + j + ".txt";
                p = Process.myPid();
            } catch (Throwable unused) {
            }
            m = true;
        }
    }

    public static synchronized void a(String str, String str2, String str3) {
        synchronized (ao.class) {
            if (m && f9590b) {
                try {
                    if (n) {
                        o.execute(new ana(0, str, str2, str3));
                    } else {
                        o.execute(new ana(1, str, str2, str3));
                    }
                } catch (Exception e2) {
                    al.b(e2);
                }
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + ap.b(th));
    }

    public static byte[] a() {
        if (!f9589a) {
            return c();
        }
        if (f9590b) {
            return ap.a(f9594f.toString(), "BuglyLog.txt");
        }
        return null;
    }

    private static String b() {
        q qVar;
        try {
            aa b2 = aa.b();
            if (b2 == null || (qVar = b2.N) == null) {
                return null;
            }
            return qVar.getLogFromNative();
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    private static byte[] c() {
        File file;
        if (!f9590b) {
            return null;
        }
        if (n) {
            al.a("[LogUtil] Get user log from native.", new Object[0]);
            String b2 = b();
            if (b2 != null) {
                al.a("[LogUtil] Got user log from native: %d bytes", Integer.valueOf(b2.length()));
                return ap.a(b2, "BuglyNativeLog.txt");
            }
        }
        StringBuilder sb = new StringBuilder();
        synchronized (q) {
            try {
                a aVar = h;
                if (aVar != null && aVar.f9596a && (file = aVar.f9597b) != null && file.length() > 0) {
                    sb.append(ap.a(h.f9597b, 30720, true));
                }
                StringBuilder sb2 = f9594f;
                if (sb2 != null && sb2.length() > 0) {
                    sb.append(f9594f.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ap.a(sb.toString(), "BuglyLog.txt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(String str, String str2, String str3) {
        q qVar;
        try {
            aa b2 = aa.b();
            if (b2 == null || (qVar = b2.N) == null) {
                return false;
            }
            return qVar.appendLogToNative(str, str2, str3);
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void e(String str, String str2, String str3) {
        synchronized (ao.class) {
            if (f9589a) {
                f(str, str2, str3);
            } else {
                g(str, str2, str3);
            }
        }
    }

    private static synchronized void f(String str, String str2, String str3) {
        synchronized (ao.class) {
            String a2 = a(str, str2, str3, Process.myTid());
            synchronized (q) {
                try {
                    f9594f.append(a2);
                    if (f9594f.length() >= f9592d) {
                        StringBuilder sb = f9594f;
                        f9594f = sb.delete(0, sb.indexOf("\u0001\r\n") + 1);
                    }
                } finally {
                    try {
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    private static synchronized void g(String str, String str2, String str3) {
        synchronized (ao.class) {
            String a2 = a(str, str2, str3, Process.myTid());
            synchronized (q) {
                try {
                    f9594f.append(a2);
                } catch (Throwable unused) {
                }
                if (f9594f.length() <= f9592d) {
                    return;
                }
                if (f9595g) {
                    return;
                }
                f9595g = true;
                a aVar = h;
                if (aVar == null) {
                    h = new a(l);
                } else {
                    File file = aVar.f9597b;
                    if (file == null || file.length() + f9594f.length() > h.f9598c) {
                        h.a();
                    }
                }
                if (h.a(f9594f.toString())) {
                    f9594f.setLength(0);
                    f9595g = false;
                }
            }
        }
    }
}
