package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcxv;
import com.google.android.gms.internal.ads.zzefe;
import com.google.android.gms.internal.ads.zzeff;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzgee;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* loaded from: classes.dex */
public final class ja implements bsx, zzcxv, zzgee {

    /* renamed from: a, reason: collision with root package name */
    public Object f19456a;

    /* renamed from: b, reason: collision with root package name */
    public Object f19457b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19458c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19459d;

    public ja(int i) {
        this.f19458c = i;
        switch (i) {
            case 5:
                this.f19456a = new Object();
                break;
        }
    }

    public ja(zzefe zzefeVar, zzcao zzcaoVar) {
        this.f19458c = 3;
        this.f19456a = zzefeVar;
        this.f19457b = zzcaoVar;
        this.f19459d = false;
    }

    public ja(zzfkl zzfklVar, zzfka zzfkaVar, boolean z) {
        this.f19458c = 4;
        this.f19456a = zzfklVar;
        this.f19457b = zzfkaVar;
        this.f19459d = z;
    }

    public ja(gwf gwfVar, boolean z, String str) {
        this.f19458c = 0;
        this.f19457b = gwfVar;
        this.f19459d = z;
        this.f19456a = str;
    }

    public ja(HashMap hashMap, boolean z, ArrayList arrayList) {
        this.f19458c = 1;
        this.f19456a = hashMap;
        this.f19459d = z;
        this.f19457b = arrayList;
    }

    public static String e(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
    }

    public void f(err errVar) {
        synchronized (this.f19456a) {
            try {
                if (((ArrayDeque) this.f19457b) == null) {
                    this.f19457b = new ArrayDeque();
                }
                ((ArrayDeque) this.f19457b).add(errVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g(ci ciVar) {
        err errVar;
        synchronized (this.f19456a) {
            if (((ArrayDeque) this.f19457b) != null && !this.f19459d) {
                this.f19459d = true;
                while (true) {
                    synchronized (this.f19456a) {
                        try {
                            errVar = (err) ((ArrayDeque) this.f19457b).poll();
                            if (errVar == null) {
                                this.f19459d = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    errVar.f(ciVar);
                }
            }
        }
    }

    @Override // g.bsx
    public boolean h() {
        return this.f19459d;
    }

    @Override // g.bsx
    public boolean i(auj aujVar) {
        int i;
        String str = (String) this.f19456a;
        if (aujVar != null) {
            boolean z = (this.f19459d || (aujVar.f10866b & 1) == 0) ? false : true;
            if (z || TextUtils.isEmpty(str)) {
                return z;
            }
            String[] strArr = {aujVar.j, aujVar.h};
            while (i < 2) {
                String str2 = strArr[i];
                i = (TextUtils.isEmpty(str2) || (!str2.toUpperCase().contains(str.toUpperCase()) && ((gwf) this.f19457b).f18868b.t(str2, str) >= 0.5d)) ? i + 1 : 0;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public gtx j(ri riVar) {
        gtx eieVar;
        String str;
        Type type = riVar.f19902b;
        Class cls = riVar.f19901a;
        HashMap hashMap = (HashMap) this.f19456a;
        if (hashMap.get(type) != null) {
            throw new ClassCastException();
        }
        if (hashMap.get(cls) != null) {
            throw new ClassCastException();
        }
        int i = 6;
        gtx gtxVar = null;
        gtx euxVar = EnumSet.class.isAssignableFrom(cls) ? new eux(type) : cls == EnumMap.class ? new dcq(i, type) : null;
        if (euxVar != null) {
            return euxVar;
        }
        gjr ak = bfc.ak((ArrayList) this.f19457b);
        if (!Modifier.isAbstract(cls.getModifiers())) {
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                gjr gjrVar = gjr.ALLOW;
                if (ak == gjrVar || (gkw.f18328b.a(null, declaredConstructor) && (ak != gjr.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                    if (ak == gjrVar) {
                        eyt eytVar = cpe.f13267a;
                        try {
                            declaredConstructor.setAccessible(true);
                            str = null;
                        } catch (Exception e2) {
                            str = "Failed making constructor '" + cpe.f(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e2.getMessage() + cpe.c(e2);
                        }
                        if (str != null) {
                            eieVar = new abq(str, 0);
                        }
                    }
                    eieVar = new eie(i, declaredConstructor);
                } else {
                    eieVar = new hy("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.", 0);
                }
            } catch (NoSuchMethodException unused) {
            }
            if (eieVar == null) {
                return eieVar;
            }
            int i2 = 28;
            if (Collection.class.isAssignableFrom(cls)) {
                gtxVar = SortedSet.class.isAssignableFrom(cls) ? new dwm(27) : Set.class.isAssignableFrom(cls) ? new acq(i2) : Queue.class.isAssignableFrom(cls) ? new bfy(i2) : new bmr(i2);
            } else if (Map.class.isAssignableFrom(cls)) {
                if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                    gtxVar = new ao(i2);
                } else if (ConcurrentMap.class.isAssignableFrom(cls)) {
                    gtxVar = new dwm(i2);
                } else {
                    int i3 = 29;
                    gtxVar = SortedMap.class.isAssignableFrom(cls) ? new acq(i3) : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(new ri(((ParameterizedType) type).getActualTypeArguments()[0]).f19901a)) ? new bmr(i3) : new bfy(i3);
                }
            }
            if (gtxVar != null) {
                return gtxVar;
            }
            String e3 = e(cls);
            if (e3 != null) {
                return new aox(e3);
            }
            if (ak != gjr.ALLOW) {
                return new yc("Unable to create instance of " + cls + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
            }
            if (this.f19459d) {
                return new evf(i, cls);
            }
            String str2 = "Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.";
            if (cls.getDeclaredConstructors().length == 0) {
                str2 = awf.c(str2, " Or adjust your R8 configuration to keep the no-args constructor of the class.");
            }
            czw czwVar = new czw();
            czwVar.f13826a = str2;
            return czwVar;
        }
        eieVar = null;
        if (eieVar == null) {
        }
    }

    public synchronized void k(abz abzVar) {
        int i = 1;
        if (true == ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzft)).booleanValue()) {
            i = 3;
        }
        ((zzcao) this.f19457b).zzd(new zzeff(i, abzVar));
    }

    public String toString() {
        switch (this.f19458c) {
            case 1:
                return ((HashMap) this.f19456a).toString();
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxv
    public synchronized void zza(int i) {
        if (this.f19459d) {
            return;
        }
        this.f19459d = true;
        k(new abz(i, "Error from: " + ((zzefe) this.f19456a).zza + ", code: " + i, "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        zzfkl zzfklVar = (zzfkl) this.f19456a;
        zzfka zzfkaVar = (zzfka) this.f19457b;
        if (zzfkaVar.zzk()) {
            zzfkaVar.zzh(th);
            zzfkaVar.zzg(false);
            zzfklVar.zza(zzfkaVar);
            if (this.f19459d) {
                zzfklVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxv
    public synchronized void zzb(abz abzVar) {
        if (this.f19459d) {
            return;
        }
        this.f19459d = true;
        k(abzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        zzfka zzfkaVar = (zzfka) this.f19457b;
        zzfkaVar.zzg(true);
        zzfkl zzfklVar = (zzfkl) this.f19456a;
        zzfklVar.zza(zzfkaVar);
        if (this.f19459d) {
            zzfklVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxv
    public synchronized void zzc(int i, String str) {
        try {
            if (this.f19459d) {
                return;
            }
            this.f19459d = true;
            if (str == null) {
                str = "Error from: " + ((zzefe) this.f19456a).zza + ", code: " + i;
            }
            k(new abz(i, str, "undefined", null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxv
    public synchronized void zzd() {
        ((zzcao) this.f19457b).zzc(null);
    }
}
