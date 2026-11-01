package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgyr;
import com.google.android.gms.internal.ads.zzgyx;
import g.awf;
import g.bfo;
import g.dff;
import g.dmd;
import g.eub;
import g.fse;
import g.gbc;
import g.gxd;
import g.he;
import g.hj;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class zzgyx<MessageType extends zzgyx<MessageType, BuilderType>, BuilderType extends zzgyr<MessageType, BuilderType>> extends zzgwy<MessageType, BuilderType> {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, zzgyx<?, ?>> zzc = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzd = -1;
    protected zzhbo zzt = zzhbo.zzc();

    public static zzgyx bm(zzgyx zzgyxVar, zzgxv zzgxvVar, zzgyh zzgyhVar) {
        zzgyx cm = zzgyxVar.cm();
        try {
            g.ah d2 = gxd.f18927a.d(cm.getClass());
            hj hjVar = zzgxvVar.f8672b;
            if (hjVar == null) {
                hjVar = new hj(zzgxvVar);
            }
            d2.l(cm, hjVar, zzgyhVar);
            d2.g(cm);
            return cm;
        } catch (zzgzm e2) {
            if (e2.b()) {
                throw new zzgzm(e2);
            }
            throw e2;
        } catch (zzhbm e3) {
            throw e3.zza();
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgzm) {
                throw ((zzgzm) e4.getCause());
            }
            throw new zzgzm(e4);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzgzm) {
                throw ((zzgzm) e5.getCause());
            }
            throw e5;
        }
    }

    public static zzgzj bn(zzgzj zzgzjVar) {
        int size = zzgzjVar.size();
        return zzgzjVar.zzf(size == 0 ? 10 : size + size);
    }

    public static zzgyx bo(zzgyx zzgyxVar, InputStream inputStream, zzgyh zzgyhVar) {
        zzgyx cd = cd(zzgyxVar, inputStream, zzgyhVar);
        ce(cd);
        return cd;
    }

    public static zzgyx bp(zzgyx zzgyxVar, byte[] bArr, zzgyh zzgyhVar) {
        zzgyx bq = bq(zzgyxVar, bArr, bArr.length, zzgyhVar);
        ce(bq);
        return bq;
    }

    public static zzgyx bq(zzgyx zzgyxVar, byte[] bArr, int i, zzgyh zzgyhVar) {
        if (i == 0) {
            return zzgyxVar;
        }
        zzgyx cm = zzgyxVar.cm();
        try {
            g.ah d2 = gxd.f18927a.d(cm.getClass());
            d2.d(cm, bArr, 0, i, new fse(zzgyhVar));
            d2.g(cm);
            return cm;
        } catch (zzgzm e2) {
            if (e2.b()) {
                throw new zzgzm(e2);
            }
            throw e2;
        } catch (zzhbm e3) {
            throw e3.zza();
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgzm) {
                throw ((zzgzm) e4.getCause());
            }
            throw new zzgzm(e4);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public static zzgyx br(zzgyx zzgyxVar, InputStream inputStream) {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        zzgyx cd = cd(zzgyxVar, inputStream, zzgyh.f8677b);
        ce(cd);
        return cd;
    }

    public static final boolean bs(zzgyx zzgyxVar, boolean z) {
        byte byteValue = ((Byte) zzgyxVar.c(zzgyw.zza, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean h = gxd.f18927a.d(zzgyxVar.getClass()).h(zzgyxVar);
        if (z) {
            zzgyxVar.c(zzgyw.zzb, true == h ? zzgyxVar : null);
        }
        return h;
    }

    public static zzgyx bt(Class cls) {
        zzgyx<?, ?> zzgyxVar = zzc.get(cls);
        if (zzgyxVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgyxVar = zzc.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (zzgyxVar != null) {
            return zzgyxVar;
        }
        zzgyx<?, ?> zzbt = ((zzgyx) gbc.t(cls)).zzbt();
        if (zzbt == null) {
            throw new IllegalStateException();
        }
        zzc.put(cls, zzbt);
        return zzbt;
    }

    public static zzgyx bu(zzgyx zzgyxVar, zzgxp zzgxpVar, zzgyh zzgyhVar) {
        zzgxv zzl = zzgxpVar.zzl();
        zzgyx bm = bm(zzgyxVar, zzl, zzgyhVar);
        zzl.zzy(0);
        ce(bm);
        return bm;
    }

    public static zzgyx bv(zzgyx zzgyxVar, zzgxv zzgxvVar, zzgyh zzgyhVar) {
        zzgyx bm = bm(zzgyxVar, zzgxvVar, zzgyhVar);
        ce(bm);
        return bm;
    }

    public static zzgyx bw(zzgyx zzgyxVar, InputStream inputStream, zzgyh zzgyhVar) {
        zzgyx bm = bm(zzgyxVar, zzgxv.zzG(inputStream, 4096), zzgyhVar);
        ce(bm);
        return bm;
    }

    public static zzgyx bx(zzgyx zzgyxVar, ByteBuffer byteBuffer) {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        return cf(zzgyxVar, byteBuffer, zzgyh.f8677b);
    }

    public static zzgyx by(zzgyx zzgyxVar, zzgxp zzgxpVar) {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        zzgyx bu = bu(zzgyxVar, zzgxpVar, zzgyh.f8677b);
        ce(bu);
        return bu;
    }

    public static Object bz(Method method, zzgyx zzgyxVar, Object... objArr) {
        try {
            return method.invoke(zzgyxVar, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static zzgyx ca(zzgyx zzgyxVar, zzgxv zzgxvVar) {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        return bv(zzgyxVar, zzgxvVar, zzgyh.f8677b);
    }

    public static void cb(Class cls, zzgyx zzgyxVar) {
        zzgyxVar.cn();
        zzc.put(cls, zzgyxVar);
    }

    public static zzgyx cc(zzgyx zzgyxVar, byte[] bArr) {
        int length = bArr.length;
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        zzgyx bq = bq(zzgyxVar, bArr, length, zzgyh.f8677b);
        ce(bq);
        return bq;
    }

    public static zzgyx cd(zzgyx zzgyxVar, InputStream inputStream, zzgyh zzgyhVar) {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            zzgxv zzG = zzgxv.zzG(new bfo(inputStream, zzgxv.zzE(read, inputStream)), 4096);
            zzgyx bm = bm(zzgyxVar, zzG, zzgyhVar);
            zzG.zzy(0);
            return bm;
        } catch (zzgzm e2) {
            if (e2.b()) {
                throw new zzgzm(e2);
            }
            throw e2;
        } catch (IOException e3) {
            throw new zzgzm(e3);
        }
    }

    public static void ce(zzgyx zzgyxVar) {
        if (zzgyxVar != null && !zzgyxVar.zzbw()) {
            throw new zzhbm(zzgyxVar).zza();
        }
    }

    public static zzgyx cf(zzgyx zzgyxVar, ByteBuffer byteBuffer, zzgyh zzgyhVar) {
        zzgxv c2;
        if (byteBuffer.hasArray()) {
            c2 = zzgxv.c(byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.array(), byteBuffer.remaining());
        } else if (byteBuffer.isDirect() && gbc.f17844b) {
            c2 = new dff(byteBuffer);
        } else {
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.duplicate().get(bArr);
            c2 = zzgxv.c(0, bArr, remaining);
        }
        zzgyx bv = bv(zzgyxVar, c2, zzgyhVar);
        ce(bv);
        return bv;
    }

    public static zzgzf cg(zzgzf zzgzfVar) {
        int size = zzgzfVar.size();
        return zzgzfVar.zzf(size == 0 ? 10 : size + size);
    }

    public static zzgyx ch(zzgyx zzgyxVar, InputStream inputStream) {
        zzgxv zzG = zzgxv.zzG(inputStream, 4096);
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        zzgyx bm = bm(zzgyxVar, zzG, zzgyh.f8677b);
        ce(bm);
        return bm;
    }

    public static <ContainingType extends zzhai, Type> zzgyv<ContainingType, Type> zzbe(ContainingType containingtype, zzhai zzhaiVar, zzgzc zzgzcVar, int i, zzhca zzhcaVar, boolean z, Class cls) {
        List list = Collections.EMPTY_LIST;
        return new zzgyv<>(containingtype, zzhaiVar, new dmd(i, zzhcaVar, true, z));
    }

    public static <ContainingType extends zzhai, Type> zzgyv<ContainingType, Type> zzbf(ContainingType containingtype, Type type, zzhai zzhaiVar, zzgzc zzgzcVar, int i, zzhca zzhcaVar, Class cls) {
        return new zzgyv<>(containingtype, zzhaiVar, new dmd(i, zzhcaVar, false, false));
    }

    @Override // com.google.android.gms.internal.ads.zzgwy
    public final int bk() {
        return this.zzd & he.UNDEFINED_ITEM_ID;
    }

    @Override // com.google.android.gms.internal.ads.zzgwy
    public final int bl(g.ah ahVar) {
        int j;
        int j2;
        if (ck()) {
            if (ahVar == null) {
                j2 = gxd.f18927a.d(getClass()).j(this);
            } else {
                j2 = ahVar.j(this);
            }
            if (j2 >= 0) {
                return j2;
            }
            throw new IllegalStateException(awf.ac(j2, "serialized size must be non-negative, was "));
        }
        if (bk() != Integer.MAX_VALUE) {
            return bk();
        }
        if (ahVar == null) {
            j = gxd.f18927a.d(getClass()).j(this);
        } else {
            j = ahVar.j(this);
        }
        cj(j);
        return j;
    }

    public abstract Object c(zzgyw zzgywVar, zzgyx zzgyxVar);

    public final zzgyr ci(zzgyx zzgyxVar) {
        zzgyr cl = cl();
        cl.zzbj(zzgyxVar);
        return cl;
    }

    public final void cj(int i) {
        if (i < 0) {
            throw new IllegalStateException(awf.ac(i, "serialized size must be non-negative, was "));
        }
        this.zzd = i | (this.zzd & Integer.MIN_VALUE);
    }

    public final boolean ck() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final zzgyr cl() {
        return (zzgyr) c(zzgyw.zze, null);
    }

    public final zzgyx cm() {
        return (zzgyx) c(zzgyw.zzd, null);
    }

    public final void cn() {
        this.zzd &= he.UNDEFINED_ITEM_ID;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return gxd.f18927a.d(getClass()).f(this, (zzgyx) obj);
    }

    public int hashCode() {
        if (ck()) {
            return gxd.f18927a.d(getClass()).e(this);
        }
        if (this.zzq == 0) {
            this.zzq = gxd.f18927a.d(getClass()).e(this);
        }
        return this.zzq;
    }

    public String toString() {
        String obj = super.toString();
        char[] cArr = d.f3951a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        d.d(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgwy
    public zzhan zzaO() {
        throw new UnsupportedOperationException("Lite does not support the mutable API.");
    }

    @Override // com.google.android.gms.internal.ads.zzhai
    public int zzaY() {
        return bl(null);
    }

    public final zzhaq<MessageType> zzbN() {
        return (zzhaq) c(zzgyw.zzg, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhai
    /* renamed from: zzbb, reason: merged with bridge method [inline-methods] */
    public final BuilderType zzcZ() {
        return (BuilderType) c(zzgyw.zze, null);
    }

    /* renamed from: zzbc, reason: merged with bridge method [inline-methods] */
    public final BuilderType zzbM() {
        BuilderType buildertype = (BuilderType) c(zzgyw.zze, null);
        buildertype.zzbj(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzhaj
    /* renamed from: zzbi, reason: merged with bridge method [inline-methods] */
    public final MessageType zzbt() {
        return (MessageType) c(zzgyw.zzf, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhaj
    public final boolean zzbw() {
        return bs(this, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhai
    public void zzda(zzgyc zzgycVar) throws IOException {
        g.ah d2 = gxd.f18927a.d(getClass());
        eub eubVar = zzgycVar.f8675c;
        if (eubVar == null) {
            eubVar = new eub(zzgycVar);
        }
        d2.i(this, eubVar);
    }
}
