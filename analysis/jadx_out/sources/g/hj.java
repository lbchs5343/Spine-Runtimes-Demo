package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgxv;
import com.google.android.gms.internal.ads.zzgyh;
import com.google.android.gms.internal.ads.zzgzj;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzl;
import com.google.android.gms.internal.ads.zzgzm;
import com.google.android.gms.internal.ads.zzgzu;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class hj {

    /* renamed from: a, reason: collision with root package name */
    public int f19370a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19371b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19372c;

    /* renamed from: d, reason: collision with root package name */
    public int f19373d;

    /* renamed from: e, reason: collision with root package name */
    public int f19374e;

    public hj() {
        this.f19372c = 0;
        this.f19371b = new LinkedHashMap(0, 0.75f, true);
    }

    public hj(zzgxv zzgxvVar) {
        this.f19372c = 1;
        this.f19370a = 0;
        Charset charset = zzgzk.f8688a;
        if (zzgxvVar == null) {
            throw new NullPointerException("input");
        }
        this.f19371b = zzgxvVar;
        zzgxvVar.f8672b = this;
    }

    private final synchronized String ag() {
        int i;
        try {
            int i2 = this.f19374e;
            int i3 = this.f19370a + i2;
            i = i3 != 0 ? (i2 * 100) / i3 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=20,hits=" + this.f19374e + ",misses=" + this.f19370a + ",hitRate=" + i + "%]";
    }

    public static final void f(int i) {
        if ((i & 7) != 0) {
            throw new zzgzm("Failed to parse the message.");
        }
    }

    public static final void g(int i) {
        if ((i & 3) != 0) {
            throw new zzgzm("Failed to parse the message.");
        }
    }

    public void aa(Object obj, ah ahVar, zzgyh zzgyhVar) {
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int zzm = zzgxvVar.zzm();
        if (zzgxvVar.f8671a >= 100) {
            throw new zzgzm("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int zzd = zzgxvVar.zzd(zzm);
        zzgxvVar.f8671a++;
        ahVar.l(obj, this, zzgyhVar);
        zzgxvVar.zzy(0);
        zzgxvVar.f8671a--;
        zzgxvVar.zzz(zzd);
    }

    public void ab(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    uoVar.zzi(zzgxvVar.zze());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                uoVar.zzi(zzgxvVar.zze());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zze()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zze()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void ac(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof ayh) {
            ayh ayhVar = (ayh) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm();
                f(zzm);
                int zzc = zzm + zzgxvVar.zzc();
                do {
                    ayhVar.zzg(zzgxvVar.zzn());
                } while (zzgxvVar.zzc() < zzc);
                return;
            }
            do {
                ayhVar.zzg(zzgxvVar.zzn());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm();
                f(zzm2);
                int zzc2 = zzm2 + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Long.valueOf(zzgxvVar.zzn()));
                } while (zzgxvVar.zzc() < zzc2);
                return;
            }
            do {
                zzgzjVar.add(Long.valueOf(zzgxvVar.zzn()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void ad(zzgzj zzgzjVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int i = this.f19373d & 7;
        if (i == 0) {
            do {
                zzgzjVar.add(Boolean.valueOf(zzgxvVar.zzB()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            this.f19370a = zzl;
            return;
        }
        if (i != 2) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        int zzc = zzgxvVar.zzc() + zzgxvVar.zzm();
        do {
            zzgzjVar.add(Boolean.valueOf(zzgxvVar.zzB()));
        } while (zzgxvVar.zzc() < zzc);
        af(zzc);
    }

    public void ae(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof ayh) {
            ayh ayhVar = (ayh) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    ayhVar.zzg(zzgxvVar.zzo());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                ayhVar.zzg(zzgxvVar.zzo());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Long.valueOf(zzgxvVar.zzo()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Long.valueOf(zzgxvVar.zzo()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void af(int i) {
        if (((zzgxv) this.f19371b).zzc() != i) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public void h(zzgzj zzgzjVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int i = this.f19373d & 7;
        if (i == 1) {
            do {
                zzgzjVar.add(Double.valueOf(zzgxvVar.zza()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            this.f19370a = zzl;
            return;
        }
        if (i != 2) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        int zzm = zzgxvVar.zzm();
        f(zzm);
        int zzc = zzgxvVar.zzc() + zzm;
        do {
            zzgzjVar.add(Double.valueOf(zzgxvVar.zza()));
        } while (zzgxvVar.zzc() < zzc);
    }

    public void i(zzgzj zzgzjVar, ah ahVar, zzgyh zzgyhVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int i = this.f19373d;
        if ((i & 7) != 2) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        do {
            Object zze = ahVar.zze();
            aa(zze, ahVar, zzgyhVar);
            ahVar.g(zze);
            zzgzjVar.add(zze);
            if (zzgxvVar.zzA() || this.f19370a != 0) {
                return;
            } else {
                zzl = zzgxvVar.zzl();
            }
        } while (zzl == i);
        this.f19370a = zzl;
    }

    public void j(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    uoVar.zzi(zzgxvVar.zzk());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                uoVar.zzi(zzgxvVar.zzk());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zzk()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zzk()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void k(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof ayh) {
            ayh ayhVar = (ayh) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    ayhVar.zzg(zzgxvVar.zzu());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                ayhVar.zzg(zzgxvVar.zzu());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Long.valueOf(zzgxvVar.zzu()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Long.valueOf(zzgxvVar.zzu()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void l(zzgzj zzgzjVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if ((this.f19373d & 7) != 2) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        do {
            zzgzjVar.add(t());
            if (zzgxvVar.zzA()) {
                return;
            } else {
                zzl = zzgxvVar.zzl();
            }
        } while (zzl == this.f19373d);
        this.f19370a = zzl;
    }

    public void m(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    uoVar.zzi(zzgxvVar.zzm());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                uoVar.zzi(zzgxvVar.zzm());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zzm()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zzm()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void n(zzgzj zzgzjVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int i = this.f19373d & 7;
        if (i == 2) {
            int zzm = zzgxvVar.zzm();
            g(zzm);
            int zzc = zzgxvVar.zzc() + zzm;
            do {
                zzgzjVar.add(Float.valueOf(zzgxvVar.zzb()));
            } while (zzgxvVar.zzc() < zzc);
            return;
        }
        if (i != 5) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        do {
            zzgzjVar.add(Float.valueOf(zzgxvVar.zzb()));
            if (zzgxvVar.zzA()) {
                return;
            } else {
                zzl = zzgxvVar.zzl();
            }
        } while (zzl == this.f19373d);
        this.f19370a = zzl;
    }

    public void o(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 == 2) {
                int zzm = zzgxvVar.zzm();
                g(zzm);
                int zzc = zzgxvVar.zzc() + zzm;
                do {
                    uoVar.zzi(zzgxvVar.zzf());
                } while (zzgxvVar.zzc() < zzc);
                return;
            }
            if (i2 != 5) {
                throw new zzgzl("Protocol message tag had invalid wire type.");
            }
            do {
                uoVar.zzi(zzgxvVar.zzf());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 == 2) {
                int zzm2 = zzgxvVar.zzm();
                g(zzm2);
                int zzc2 = zzgxvVar.zzc() + zzm2;
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zzf()));
                } while (zzgxvVar.zzc() < zzc2);
                return;
            }
            if (i3 != 5) {
                throw new zzgzl("Protocol message tag had invalid wire type.");
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zzf()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void p(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof ayh) {
            ayh ayhVar = (ayh) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    ayhVar.zzg(zzgxvVar.zzt());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                ayhVar.zzg(zzgxvVar.zzt());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Long.valueOf(zzgxvVar.zzt()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Long.valueOf(zzgxvVar.zzt()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void q(zzgzj zzgzjVar, ah ahVar, zzgyh zzgyhVar) {
        int zzl;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        int i = this.f19373d;
        if ((i & 7) != 3) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        do {
            Object zze = ahVar.zze();
            w(zze, ahVar, zzgyhVar);
            ahVar.g(zze);
            zzgzjVar.add(zze);
            if (zzgxvVar.zzA() || this.f19370a != 0) {
                return;
            } else {
                zzl = zzgxvVar.zzl();
            }
        } while (zzl == i);
        this.f19370a = zzl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x006d, code lost:
    
        throw new java.lang.IllegalStateException(g.hj.class.getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void r() {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f19373d < 0 || (((LinkedHashMap) this.f19371b).isEmpty() && this.f19373d != 0)) {
                        break;
                    }
                    if (this.f19373d <= 20 || ((LinkedHashMap) this.f19371b).isEmpty()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) ((LinkedHashMap) this.f19371b).entrySet().iterator().next();
                    Object key = entry.getKey();
                    entry.getValue();
                    ((LinkedHashMap) this.f19371b).remove(key);
                    this.f19373d--;
                } finally {
                }
            }
        }
    }

    public int s() {
        int i = this.f19370a;
        if (i != 0) {
            this.f19373d = i;
            this.f19370a = 0;
        } else {
            i = ((zzgxv) this.f19371b).zzl();
            this.f19373d = i;
        }
        return (i == 0 || i == this.f19374e) ? he.UNDEFINED_ITEM_ID : i >>> 3;
    }

    public zzgxp t() {
        v(2);
        return ((zzgxv) this.f19371b).zzv();
    }

    public synchronized String toString() {
        switch (this.f19372c) {
            case 0:
                return ag();
            default:
                return super.toString();
        }
    }

    public void u(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    uoVar.zzi(zzgxvVar.zzg());
                } while (zzgxvVar.zzc() < zzm);
                af(zzm);
                return;
            }
            do {
                uoVar.zzi(zzgxvVar.zzg());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm() + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zzg()));
                } while (zzgxvVar.zzc() < zzm2);
                af(zzm2);
                return;
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zzg()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void v(int i) {
        if ((this.f19373d & 7) != i) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
    }

    public void w(Object obj, ah ahVar, zzgyh zzgyhVar) {
        int i = this.f19374e;
        this.f19374e = ((this.f19373d >>> 3) << 3) | 4;
        try {
            ahVar.l(obj, this, zzgyhVar);
            if (this.f19373d == this.f19374e) {
            } else {
                throw new zzgzm("Failed to parse the message.");
            }
        } finally {
            this.f19374e = i;
        }
    }

    public void x(zzgzj zzgzjVar, boolean z) {
        String zzw;
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if ((this.f19373d & 7) != 2) {
            throw new zzgzl("Protocol message tag had invalid wire type.");
        }
        if ((zzgzjVar instanceof zzgzu) && !z) {
            zzgzu zzgzuVar = (zzgzu) zzgzjVar;
            do {
                t();
                zzgzuVar.zzb();
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            do {
                if (z) {
                    v(2);
                    zzw = zzgxvVar.zzx();
                } else {
                    v(2);
                    zzw = zzgxvVar.zzw();
                }
                zzgzjVar.add(zzw);
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void y(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof uo) {
            uo uoVar = (uo) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 == 2) {
                int zzm = zzgxvVar.zzm();
                g(zzm);
                int zzc = zzgxvVar.zzc() + zzm;
                do {
                    uoVar.zzi(zzgxvVar.zzj());
                } while (zzgxvVar.zzc() < zzc);
                return;
            }
            if (i2 != 5) {
                throw new zzgzl("Protocol message tag had invalid wire type.");
            }
            do {
                uoVar.zzi(zzgxvVar.zzj());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 == 2) {
                int zzm2 = zzgxvVar.zzm();
                g(zzm2);
                int zzc2 = zzgxvVar.zzc() + zzm2;
                do {
                    zzgzjVar.add(Integer.valueOf(zzgxvVar.zzj()));
                } while (zzgxvVar.zzc() < zzc2);
                return;
            }
            if (i3 != 5) {
                throw new zzgzl("Protocol message tag had invalid wire type.");
            }
            do {
                zzgzjVar.add(Integer.valueOf(zzgxvVar.zzj()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }

    public void z(zzgzj zzgzjVar) {
        int zzl;
        int i;
        zzgxv zzgxvVar = (zzgxv) this.f19371b;
        if (zzgzjVar instanceof ayh) {
            ayh ayhVar = (ayh) zzgzjVar;
            int i2 = this.f19373d & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm = zzgxvVar.zzm();
                f(zzm);
                int zzc = zzm + zzgxvVar.zzc();
                do {
                    ayhVar.zzg(zzgxvVar.zzs());
                } while (zzgxvVar.zzc() < zzc);
                return;
            }
            do {
                ayhVar.zzg(zzgxvVar.zzs());
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    i = zzgxvVar.zzl();
                }
            } while (i == this.f19373d);
        } else {
            int i3 = this.f19373d & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgzl("Protocol message tag had invalid wire type.");
                }
                int zzm2 = zzgxvVar.zzm();
                f(zzm2);
                int zzc2 = zzm2 + zzgxvVar.zzc();
                do {
                    zzgzjVar.add(Long.valueOf(zzgxvVar.zzs()));
                } while (zzgxvVar.zzc() < zzc2);
                return;
            }
            do {
                zzgzjVar.add(Long.valueOf(zzgxvVar.zzs()));
                if (zzgxvVar.zzA()) {
                    return;
                } else {
                    zzl = zzgxvVar.zzl();
                }
            } while (zzl == this.f19373d);
            i = zzl;
        }
        this.f19370a = i;
    }
}
