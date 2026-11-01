package bin.mt.signature;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import sun.misc.Unsafe;

/* loaded from: classes4.dex */
public class KillerApplication55 extends Application {
    public static final String URL = "https://github.com/L-JINBIN/ApkSignatureKillerEx";

    public class a {
        private boolean override;
    }

    public final class b {
        private transient int accessFlags;
        private transient int classFlags;
        private transient ClassLoader classLoader;
        private transient int classSize;
        private transient int clinitThreadId;
        private transient Class componentType;
        private transient short copiedMethodsOffset;
        private transient Object dexCache;
        private transient int dexClassDefIndex;
        private volatile transient int dexTypeIndex;
        private transient Object extData;
        private transient long iFields;
        private transient Object[] ifTable;
        private transient long methods;
        private transient String name;
        private transient int numReferenceInstanceFields;
        private transient int numReferenceStaticFields;
        private transient int objectSize;
        private transient int objectSizeAllocFastPath;
        private transient int primitiveType;
        private transient int referenceInstanceOffsets;
        private transient long sFields;
        private transient int status;
        private transient Class superClass;
        private transient short virtualMethodsOffset;
        private transient Object vtable;
    }

    public final class c extends a {
        private int accessFlags;
        private long artMethod;
        private b declaringClass;
        private b declaringClassOfOverriddenMethod;
        private Object[] parameters;
    }

    public final class d {
        private final Member member = null;
        private final f handle = null;
    }

    public final class e {
        private e(Object... objArr) {
            throw new IllegalStateException("Failed to new a instance");
        }

        private static Object invoke(Object... objArr) {
            throw new IllegalStateException("Failed to invoke the method");
        }
    }

    public class f {
        private f cachedSpreadInvoker;
        private MethodType nominalType;
        private final MethodType type = null;
        protected final int handleKind = 0;
        protected final long artFieldOrMethod = 0;
    }

    public final class g extends f {
        private final MethodHandleInfo info = null;
    }

    public final class h {
        private static int s;
        private static int t;
        private int i;
        private int j;

        private static void a() {
        }

        private static void b() {
        }
    }

    public final /* synthetic */ class i {
    }

    public final class j {

        /* renamed from: a, reason: collision with root package name */
        public static final Unsafe f365a;

        /* renamed from: b, reason: collision with root package name */
        public static final long f366b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f367c;

        /* renamed from: d, reason: collision with root package name */
        public static final long f368d;

        /* renamed from: e, reason: collision with root package name */
        public static final long f369e;

        /* renamed from: f, reason: collision with root package name */
        public static final HashSet f370f = new HashSet();

        static {
            try {
                Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
                f365a = unsafe;
                f366b = unsafe.objectFieldOffset(c.class.getDeclaredField("artMethod"));
                unsafe.objectFieldOffset(c.class.getDeclaredField("declaringClass"));
                long objectFieldOffset = unsafe.objectFieldOffset(f.class.getDeclaredField("artFieldOrMethod"));
                unsafe.objectFieldOffset(g.class.getDeclaredField("info"));
                long objectFieldOffset2 = unsafe.objectFieldOffset(b.class.getDeclaredField("methods"));
                f367c = objectFieldOffset2;
                long objectFieldOffset3 = unsafe.objectFieldOffset(b.class.getDeclaredField("iFields"));
                unsafe.objectFieldOffset(b.class.getDeclaredField("sFields"));
                unsafe.objectFieldOffset(d.class.getDeclaredField("member"));
                Method declaredMethod = h.class.getDeclaredMethod("a", null);
                Method declaredMethod2 = h.class.getDeclaredMethod("b", null);
                declaredMethod.setAccessible(true);
                declaredMethod2.setAccessible(true);
                MethodHandle unreflect = MethodHandles.lookup().unreflect(declaredMethod);
                MethodHandle unreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
                long j = unsafe.getLong(unreflect, objectFieldOffset);
                long j2 = unsafe.getLong(unreflect2, objectFieldOffset);
                long j3 = unsafe.getLong(h.class, objectFieldOffset2);
                long j4 = j2 - j;
                f368d = j4;
                f369e = (j - j3) - j4;
                Field declaredField = h.class.getDeclaredField("i");
                Field declaredField2 = h.class.getDeclaredField("j");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                MethodHandle unreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
                unsafe.getLong(unreflectGetter, objectFieldOffset);
                unsafe.getLong(unreflectGetter2, objectFieldOffset);
                unsafe.getLong(h.class, objectFieldOffset3);
            } catch (ReflectiveOperationException e2) {
                Log.e("HiddenApiBypass", "Initialize error", e2);
                throw new ExceptionInInitializerError(e2);
            }
        }

        public static Object a(Class cls, Object obj, String str, Object... objArr) {
            if (obj != null && !cls.isInstance(obj)) {
                throw new IllegalArgumentException("this object is not an instance of the given class");
            }
            Method declaredMethod = e.class.getDeclaredMethod("invoke", Object[].class);
            declaredMethod.setAccessible(true);
            Unsafe unsafe = f365a;
            long j = unsafe.getLong(cls, f367c);
            if (j == 0) {
                throw new NoSuchMethodException("Cannot find matching method");
            }
            int i = unsafe.getInt(j);
            for (int i2 = 0; i2 < i; i2++) {
                f365a.putLong(declaredMethod, f366b, (i2 * f368d) + j + f369e);
                if (str.equals(declaredMethod.getName())) {
                    Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
                    if (parameterTypes.length == objArr.length) {
                        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
                            if (parameterTypes[i3].isPrimitive()) {
                                Class<?> cls2 = parameterTypes[i3];
                                if (cls2 == Integer.TYPE) {
                                    if (!(objArr[i3] instanceof Integer)) {
                                        break;
                                    }
                                }
                                if (cls2 == Byte.TYPE) {
                                    if (!(objArr[i3] instanceof Byte)) {
                                        break;
                                    }
                                }
                                if (cls2 == Character.TYPE) {
                                    if (!(objArr[i3] instanceof Character)) {
                                        break;
                                    }
                                }
                                if (cls2 == Boolean.TYPE) {
                                    if (!(objArr[i3] instanceof Boolean)) {
                                        break;
                                    }
                                }
                                if (cls2 == Double.TYPE) {
                                    if (!(objArr[i3] instanceof Double)) {
                                        break;
                                    }
                                }
                                if (cls2 == Float.TYPE) {
                                    if (!(objArr[i3] instanceof Float)) {
                                        break;
                                    }
                                }
                                if (cls2 == Long.TYPE) {
                                    if (!(objArr[i3] instanceof Long)) {
                                        break;
                                    }
                                }
                                if (cls2 == Short.TYPE && !(objArr[i3] instanceof Short)) {
                                    break;
                                }
                            } else {
                                Object obj2 = objArr[i3];
                                if (obj2 != null && !parameterTypes[i3].isInstance(obj2)) {
                                    break;
                                }
                            }
                        }
                        return declaredMethod.invoke(obj, objArr);
                    }
                    continue;
                }
            }
            throw new NoSuchMethodException("Cannot find matching method");
        }

        public static boolean b(String... strArr) {
            try {
                a(VMRuntime.class, a(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
                return true;
            } catch (Throwable th) {
                Log.w("HiddenApiBypass", "setHiddenApiExemptions", th);
                return false;
            }
        }
    }

    public final /* synthetic */ class k {
    }

    public final class l implements Parcelable.Creator {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Parcelable.Creator f371a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f372b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Signature f373c;

        public l(Parcelable.Creator creator, String str, Signature signature) {
            this.f371a = creator;
            this.f372b = str;
            this.f373c = signature;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            Signature[] apkContentsSigners;
            PackageInfo packageInfo = (PackageInfo) this.f371a.createFromParcel(parcel);
            if (packageInfo.packageName.equals(this.f372b)) {
                Signature[] signatureArr = packageInfo.signatures;
                Signature signature = this.f373c;
                if (signatureArr != null && signatureArr.length > 0) {
                    signatureArr[0] = signature;
                }
                if (Build.VERSION.SDK_INT >= 28 && packageInfo.signingInfo != null && (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) != null && apkContentsSigners.length > 0) {
                    apkContentsSigners[0] = signature;
                }
            }
            return packageInfo;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return (PackageInfo[]) this.f371a.newArray(i);
        }
    }

    static {
        killPM("cn.trinea.android.developertools", "MIIDeTCCAmGgAwIBAgIEJVyaDTANBgkqhkiG9w0BAQsFADBsMQswCQYDVQQGEwI4NjERMA8GA1UE\nCBMIWmhlSmlhbmcxFzAVBgNVBAcTDkhhbmd6aG91IENoaW5hMQ8wDQYDVQQKEwZ0cmluZWExDzAN\nBgNVBAsTBnRyaW5lYTEPMA0GA1UEAxMGVHJpbmVhMCAXDTE0MTEwNTAwMzAyNVoYDzMwMTQwMzA4\nMDAzMDI1WjBsMQswCQYDVQQGEwI4NjERMA8GA1UECBMIWmhlSmlhbmcxFzAVBgNVBAcTDkhhbmd6\naG91IENoaW5hMQ8wDQYDVQQKEwZ0cmluZWExDzANBgNVBAsTBnRyaW5lYTEPMA0GA1UEAxMGVHJp\nbmVhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA22o8uI/1a6rOkJ3E18Gh41rsqoM4\nrt3pbg/4WiNiRZKarHwR0HENmObgeR4VEne5cR1+NtkLM3d/B+33QEU3Ydgivsg3XdCyVahGrVG1\ngyRc5NkldGVKBdJY7BsecCYFlcTSMvqLfyvYxYyffXsYfkhbFCMzMQI/npXiXb706dc5+OzM9gGk\ngi77gwlvoEHlgnQey4kXzx0Ryp4maPD1yC+EjdGuQOOFS+B/f1hmUMj9ShvdB+I3NK2b8NH7CxV8\nVkD8uMnc7m5fVV/X2VJvpc9WXaPyx17QU/nu57IY4ObZwmSreQyl4FEEs9AN2jIQ83dizza/jlJj\nRWJv5GB0bQIDAQABoyEwHzAdBgNVHQ4EFgQUhC4Vyr/s33Y0ZfD5iOG82hCQTWcwDQYJKoZIhvcN\nAQELBQADggEBAG9znA2NtGGYjwZxon7/4MvFTfrFMtk+hD2VTjB7gVV8dYSYQe599RI5HiLtY1sN\ngIbUSkpAGFvs5Ob93kmkl98e1qq3EwCNMtr2bq1zUBM3mT+BI08S2g5vg9CcAzNMmLWAY2DzZ17u\naWDQthbqkbCkhvCrnU+6dZ9JAZn6XoLRaECLFC45NZ3nsZeqM2vQ4NITJvxDyz/S4XnXHybab+Vq\n76ebrrF6cfCJYG2lrxwECZkhm2SyLJhpMFZYJOtATFguWPyPBkACP3rEYuuwPX3pe6ASf6KQEvTa\ntSqgOSyaDjEjLqNcr5iwvAS2zU6+qMsjoxSLMsZa1fq93p4/YDc=\n");
        killOpen("cn.trinea.android.developertools", "", "", "");
    }

    public static Field a(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e2) {
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls.equals(Object.class)) {
                    break;
                }
                try {
                    Field declaredField2 = cls.getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    return declaredField2;
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e2;
        }
    }

    public static boolean b(String str, String str2) {
        if (str2.startsWith("/") && str2.endsWith(".apk")) {
            String[] split = str2.substring(1).split("/", 6);
            int length = split.length;
            if (length == 4 || length == 5) {
                if (split[0].equals("data") && split[1].equals("app") && split[length - 1].equals("base.apk")) {
                    return split[length - 2].startsWith(str);
                }
                if (split[0].equals("mnt") && split[1].equals("asec") && split[length - 1].equals("pkg.apk")) {
                    return split[length - 2].startsWith(str);
                }
            } else if (length == 3) {
                if (split[0].equals("data") && split[1].equals("app")) {
                    return split[2].startsWith(str);
                }
            } else if (length == 6 && split[0].equals("mnt") && split[1].equals("expand") && split[3].equals("app") && split[5].equals("base.apk")) {
                return split[4].endsWith(str);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r5.canWrite() != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void killOpen(String str, String str2, String str3, String str4) {
        String str5;
        File file;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        if (str2.isEmpty() || str3.isEmpty() || str4.isEmpty()) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        str5 = null;
                        break;
                    } else {
                        str5 = readLine.split("\\s+")[r3.length - 1];
                        if (b(str, str5)) {
                            bufferedReader.close();
                            break;
                        }
                    }
                } finally {
                }
            }
            if (str5 == null) {
                System.err.println("Get apk path failed");
                return;
            }
            File file2 = new File(str5);
            String name = Environment.getExternalStorageDirectory().getName();
            if (name.matches("\\d+")) {
                file = new File("/data/user/" + name + "/" + str);
            }
            file = new File("/data/data/" + str);
            File file3 = new File(file, str4);
            file3.getParentFile().mkdirs();
            try {
                ZipFile zipFile = new ZipFile(file2);
                try {
                    ZipEntry entry = zipFile.getEntry(str3);
                    if (entry == null) {
                        throw new RuntimeException("Entry not found: " + str3);
                    }
                    try {
                        try {
                            try {
                                if (file3.exists()) {
                                    if (file3.length() != entry.getSize()) {
                                    }
                                    zipFile.close();
                                    System.setProperty("mt.signature.killer.path1", file2.getAbsolutePath());
                                    System.setProperty("mt.signature.killer.path2", file3.getAbsolutePath());
                                    System.loadLibrary(str2);
                                    return;
                                }
                                System.setProperty("mt.signature.killer.path1", file2.getAbsolutePath());
                                System.setProperty("mt.signature.killer.path2", file3.getAbsolutePath());
                                System.loadLibrary(str2);
                                return;
                            } finally {
                                System.clearProperty("mt.signature.killer.path1");
                                System.clearProperty("mt.signature.killer.path2");
                            }
                            byte[] bArr = new byte[102400];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                }
                            }
                            fileOutputStream.close();
                            inputStream.close();
                            zipFile.close();
                        } finally {
                        }
                        fileOutputStream = new FileOutputStream(file3);
                    } finally {
                    }
                    inputStream = zipFile.getInputStream(entry);
                } finally {
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    private static void killPM(String str, String str2) {
        try {
            a(PackageInfo.class, "CREATOR").set(null, new l(PackageInfo.CREATOR, str, new Signature(Base64.decode(str2, 0))));
            if (Build.VERSION.SDK_INT >= 28) {
                HashSet hashSet = j.f370f;
                hashSet.addAll(Arrays.asList("Landroid/os/Parcel;", "Landroid/content/pm", "Landroid/app"));
                String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                j.b(strArr);
            }
            try {
                Object obj = a(PackageManager.class, "sPackageInfoCache").get(null);
                obj.getClass().getMethod("clear", null).invoke(obj, null);
            } catch (Throwable unused) {
            }
            try {
                ((Map) a(Parcel.class, "mCreators").get(null)).clear();
            } catch (Throwable unused2) {
            }
            try {
                ((Map) a(Parcel.class, "sPairedCreators").get(null)).clear();
            } catch (Throwable unused3) {
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
