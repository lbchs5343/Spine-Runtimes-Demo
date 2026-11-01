package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public abstract class diy {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f14255a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f14256b;

    /* renamed from: c, reason: collision with root package name */
    public static final Unsafe f14257c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f14258d;

    /* renamed from: e, reason: collision with root package name */
    public static final Class f14259e;

    /* renamed from: f, reason: collision with root package name */
    public static final frx f14260f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f14261g;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0159  */
    static {
        char c2;
        boolean z;
        Field p;
        frx frxVar;
        Unsafe n = n();
        f14257c = n;
        f14259e = dgm.b();
        Class<?> cls = Long.TYPE;
        boolean i = i(cls);
        Class<?> cls2 = Integer.TYPE;
        boolean i2 = i(cls2);
        asx asxVar = null;
        char c3 = 1;
        boolean z2 = false;
        z2 = false;
        if (n != null) {
            if (i) {
                asxVar = new asx(n, c3 == true ? 1 : 0);
            } else if (i2) {
                asxVar = new asx(n, z2 ? 1 : 0);
            }
        }
        f14260f = asxVar;
        if (asxVar != null) {
            try {
                Class<?> cls3 = asxVar.i.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (p() != null) {
                    z2 = true;
                }
            } catch (Throwable th) {
                c2 = 0;
                Logger.getLogger(diy.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
                z2 = false;
            }
        }
        c2 = 0;
        f14255a = z2;
        frx frxVar2 = f14260f;
        if (frxVar2 != null) {
            try {
                Class<?> cls4 = frxVar2.i.getClass();
                Class<?>[] clsArr = new Class[1];
                clsArr[c2] = Field.class;
                cls4.getMethod("objectFieldOffset", clsArr);
                Class<?>[] clsArr2 = new Class[1];
                clsArr2[c2] = Class.class;
                cls4.getMethod("arrayBaseOffset", clsArr2);
                Class<?>[] clsArr3 = new Class[1];
                clsArr3[c2] = Class.class;
                cls4.getMethod("arrayIndexScale", clsArr3);
                Class<?>[] clsArr4 = new Class[2];
                clsArr4[c2] = Object.class;
                clsArr4[1] = cls;
                cls4.getMethod("getInt", clsArr4);
                Class<?>[] clsArr5 = new Class[3];
                clsArr5[c2] = Object.class;
                clsArr5[1] = cls;
                clsArr5[2] = cls2;
                cls4.getMethod("putInt", clsArr5);
                Class<?>[] clsArr6 = new Class[2];
                clsArr6[c2] = Object.class;
                clsArr6[1] = cls;
                cls4.getMethod("getLong", clsArr6);
                Class<?>[] clsArr7 = new Class[3];
                clsArr7[c2] = Object.class;
                clsArr7[1] = cls;
                clsArr7[2] = cls;
                cls4.getMethod("putLong", clsArr7);
                Class<?>[] clsArr8 = new Class[2];
                clsArr8[c2] = Object.class;
                clsArr8[1] = cls;
                cls4.getMethod("getObject", clsArr8);
                Class<?>[] clsArr9 = new Class[3];
                clsArr9[c2] = Object.class;
                clsArr9[1] = cls;
                clsArr9[2] = Object.class;
                cls4.getMethod("putObject", clsArr9);
                z = true;
            } catch (Throwable th2) {
                Logger.getLogger(diy.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
            }
            f14256b = z;
            f14258d = k(byte[].class);
            k(boolean[].class);
            m(boolean[].class);
            k(int[].class);
            m(int[].class);
            k(long[].class);
            m(long[].class);
            k(float[].class);
            m(float[].class);
            k(double[].class);
            m(double[].class);
            k(Object[].class);
            m(Object[].class);
            p = p();
            if (p != null && (frxVar = f14260f) != null) {
                frxVar.n(p);
            }
            f14261g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        z = false;
        f14256b = z;
        f14258d = k(byte[].class);
        k(boolean[].class);
        m(boolean[].class);
        k(int[].class);
        m(int[].class);
        k(long[].class);
        m(long[].class);
        k(float[].class);
        m(float[].class);
        k(double[].class);
        m(double[].class);
        k(Object[].class);
        m(Object[].class);
        p = p();
        if (p != null) {
            frxVar.n(p);
        }
        f14261g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void h(long j, Object obj, Object obj2) {
        f14260f.o(j, obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean i(Class cls) {
        int i = dgm.f14138a;
        try {
            Class cls2 = f14259e;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void j(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        frx frxVar = f14260f;
        int i = (((int) j) & 3) << 3;
        frxVar.m(obj, j2, ((255 & b2) << i) | (frxVar.r(j2, obj) & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i))));
    }

    public static int k(Class cls) {
        if (f14256b) {
            return f14260f.j(cls);
        }
        return -1;
    }

    public static Object l(Class cls) {
        try {
            return f14257c.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void m(Class cls) {
        if (f14256b) {
            f14260f.q(cls);
        }
    }

    public static Unsafe n() {
        try {
            return (Unsafe) AccessController.doPrivileged(new asa());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ boolean o(long j, Object obj) {
        return ((byte) ((f14260f.r((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static Field p() {
        Field field;
        Field field2;
        int i = dgm.f14138a;
        try {
            field = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            field = null;
        }
        if (field != null) {
            return field;
        }
        try {
            field2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field2 = null;
        }
        if (field2 == null || field2.getType() != Long.TYPE) {
            return null;
        }
        return field2;
    }

    public static /* bridge */ /* synthetic */ boolean q(long j, Object obj) {
        return ((byte) ((f14260f.r((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static void r(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        frx frxVar = f14260f;
        int r = frxVar.r(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        frxVar.m(obj, j2, ((255 & b2) << i) | (r & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i))));
    }

    public static void s(Object obj, long j, int i) {
        f14260f.m(obj, j, i);
    }
}
