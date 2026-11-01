package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public abstract class gbc {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f17843a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f17844b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f17845c;

    /* renamed from: d, reason: collision with root package name */
    public static final Unsafe f17846d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f17847e;

    /* renamed from: f, reason: collision with root package name */
    public static final Class f17848f;

    /* renamed from: g, reason: collision with root package name */
    public static final aul f17849g;
    public static final long h;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0161  */
    static {
        char c2;
        boolean z;
        Field x;
        long j;
        aul aulVar;
        Unsafe j2 = j();
        f17846d = j2;
        int i = enu.f15875a;
        f17848f = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean z2 = z(cls);
        Class<?> cls2 = Integer.TYPE;
        boolean z3 = z(cls2);
        aul aulVar2 = null;
        if (j2 != null) {
            if (z2) {
                aulVar2 = new fku(j2);
            } else if (z3) {
                aulVar2 = new bri(j2);
            }
        }
        f17849g = aulVar2;
        boolean z4 = false;
        if (aulVar2 != null) {
            try {
                Class<?> cls3 = aulVar2.h.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (x() != null) {
                    z4 = true;
                }
            } catch (Throwable th) {
                c2 = 0;
                Logger.getLogger(gbc.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
                z4 = false;
            }
        }
        c2 = 0;
        f17844b = z4;
        aul aulVar3 = f17849g;
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
                Logger.getLogger(gbc.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
            }
            f17845c = z;
            f17847e = p(byte[].class);
            p(boolean[].class);
            u(boolean[].class);
            p(int[].class);
            u(int[].class);
            p(long[].class);
            u(long[].class);
            p(float[].class);
            u(float[].class);
            p(double[].class);
            u(double[].class);
            p(Object[].class);
            u(Object[].class);
            x = x();
            j = -1;
            if (x != null && (aulVar = f17849g) != null) {
                j = aulVar.h.objectFieldOffset(x);
            }
            h = j;
            f17843a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        z = false;
        f17845c = z;
        f17847e = p(byte[].class);
        p(boolean[].class);
        u(boolean[].class);
        p(int[].class);
        u(int[].class);
        p(long[].class);
        u(long[].class);
        p(float[].class);
        u(float[].class);
        p(double[].class);
        u(double[].class);
        p(Object[].class);
        u(Object[].class);
        x = x();
        j = -1;
        if (x != null) {
            j = aulVar.h.objectFieldOffset(x);
        }
        h = j;
        f17843a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static long i(long j, Object obj) {
        return f17849g.h.getLong(obj, j);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new fxl());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(long j, Object obj, Object obj2) {
        f17849g.h.putObject(obj, j, obj2);
    }

    public static void l(Object obj, long j, long j2) {
        f17849g.h.putLong(obj, j, j2);
    }

    public static void m(Object obj, long j, byte b2) {
        aul aulVar = f17849g;
        long j2 = (-4) & j;
        int i = aulVar.h.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        aulVar.h.putInt(obj, j2, ((255 & b2) << i2) | (i & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i2))));
    }

    public static void n(byte[] bArr, long j, byte b2) {
        f17849g.i(bArr, f17847e + j, b2);
    }

    public static void o(Object obj, long j, byte b2) {
        aul aulVar = f17849g;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        aulVar.h.putInt(obj, j2, ((255 & b2) << i) | (aulVar.h.getInt(obj, j2) & (~(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE << i))));
    }

    public static int p(Class cls) {
        if (f17845c) {
            return f17849g.h.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int q(long j, Object obj) {
        return f17849g.h.getInt(obj, j);
    }

    public static /* bridge */ /* synthetic */ boolean r(long j, Object obj) {
        return ((byte) ((f17849g.h.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static void s(Object obj, long j, int i) {
        f17849g.h.putInt(obj, j, i);
    }

    public static Object t(Class cls) {
        try {
            return f17846d.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void u(Class cls) {
        if (f17845c) {
            f17849g.h.arrayIndexScale(cls);
        }
    }

    public static Object v(long j, Object obj) {
        return f17849g.h.getObject(obj, j);
    }

    public static /* bridge */ /* synthetic */ boolean w(long j, Object obj) {
        return ((byte) ((f17849g.h.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) != 0;
    }

    public static Field x() {
        Field field;
        Field field2;
        int i = enu.f15875a;
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

    public static long y(ByteBuffer byteBuffer) {
        return f17849g.h.getLong(byteBuffer, h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean z(Class cls) {
        int i = enu.f15875a;
        try {
            Class cls2 = f17848f;
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
}
