package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public abstract class euh {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f16172a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f16173b;

    /* renamed from: c, reason: collision with root package name */
    public static final Unsafe f16174c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f16175d;

    /* renamed from: e, reason: collision with root package name */
    public static final Class f16176e;

    /* renamed from: f, reason: collision with root package name */
    public static final aul f16177f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f16178g;

    /* JADX WARN: Removed duplicated region for block: B:20:0x015b  */
    static {
        char c2;
        boolean z;
        Field t;
        aul aulVar;
        Unsafe s = s();
        f16174c = s;
        int i = fvs.f17487a;
        f16176e = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean j = j(cls);
        Class<?> cls2 = Integer.TYPE;
        boolean j2 = j(cls2);
        aul aulVar2 = null;
        if (s != null) {
            if (j) {
                aulVar2 = new gku(s);
            } else if (j2) {
                aulVar2 = new adc(s);
            }
        }
        f16177f = aulVar2;
        boolean z2 = false;
        if (aulVar2 != null) {
            try {
                Class<?> cls3 = aulVar2.h.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (t() != null) {
                    z2 = true;
                }
            } catch (Throwable th) {
                c2 = 0;
                Logger.getLogger(euh.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
                z2 = false;
            }
        }
        c2 = 0;
        f16172a = z2;
        aul aulVar3 = f16177f;
        if (aulVar3 != null) {
            try {
                Class<?> cls4 = aulVar3.h.getClass();
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
                Logger.getLogger(euh.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
            }
            f16173b = z;
            f16175d = q(byte[].class);
            q(boolean[].class);
            o(boolean[].class);
            q(int[].class);
            o(int[].class);
            q(long[].class);
            o(long[].class);
            q(float[].class);
            o(float[].class);
            q(double[].class);
            o(double[].class);
            q(Object[].class);
            o(Object[].class);
            t = t();
            if (t != null && (aulVar = f16177f) != null) {
                aulVar.h.objectFieldOffset(t);
            }
            f16178g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        z = false;
        f16173b = z;
        f16175d = q(byte[].class);
        q(boolean[].class);
        o(boolean[].class);
        q(int[].class);
        o(int[].class);
        q(long[].class);
        o(long[].class);
        q(float[].class);
        o(float[].class);
        q(double[].class);
        o(double[].class);
        q(Object[].class);
        o(Object[].class);
        t = t();
        if (t != null) {
            aulVar.h.objectFieldOffset(t);
        }
        f16178g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Object h(long j, Object obj) {
        return f16177f.h.getObject(obj, j);
    }

    public static void i(Object obj, long j, long j2) {
        f16177f.h.putLong(obj, j, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean j(Class cls) {
        int i = fvs.f17487a;
        try {
            Class cls2 = f16176e;
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

    public static /* bridge */ /* synthetic */ boolean k(long j, Object obj) {
        return ((byte) ((f16177f.h.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static void l(Object obj, long j, byte b2) {
        Unsafe unsafe = f16177f.h;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i) | (unsafe.getInt(obj, j2) & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i))));
    }

    public static void m(long j, Object obj, Object obj2) {
        f16177f.h.putObject(obj, j, obj2);
    }

    public static int n(long j, Object obj) {
        return f16177f.h.getInt(obj, j);
    }

    public static void o(Class cls) {
        if (f16173b) {
            f16177f.h.arrayIndexScale(cls);
        }
    }

    public static long p(long j, Object obj) {
        return f16177f.h.getLong(obj, j);
    }

    public static int q(Class cls) {
        if (f16173b) {
            return f16177f.h.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static /* bridge */ /* synthetic */ boolean r(long j, Object obj) {
        return ((byte) ((f16177f.h.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static Unsafe s() {
        try {
            return (Unsafe) AccessController.doPrivileged(new ehf());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field t() {
        Field field;
        Field field2;
        int i = fvs.f17487a;
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

    public static void u(Object obj, long j, int i) {
        f16177f.h.putInt(obj, j, i);
    }

    public static void v(Object obj, long j, byte b2) {
        Unsafe unsafe = f16177f.h;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i2) | (i & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i2))));
    }

    public static Object w(Class cls) {
        try {
            return f16174c.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
