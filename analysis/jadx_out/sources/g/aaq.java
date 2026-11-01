package g;

import android.os.SystemClock;
import android.util.Pair;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class aaq extends aiq {
    public final HashMap _aw;

    /* renamed from: b, reason: collision with root package name */
    public final fou f9870b;

    /* renamed from: c, reason: collision with root package name */
    public final fou f9871c;

    /* renamed from: e, reason: collision with root package name */
    public final fou f9872e;

    /* renamed from: g, reason: collision with root package name */
    public final fou f9873g;
    public final fou h;

    public aaq(bsz bszVar) {
        super(bszVar);
        this._aw = new HashMap();
        gmr gmrVar = ((cyg) this.z).f13744b;
        cyg.ai(gmrVar);
        this.h = new fou(gmrVar, "last_delete_stale", 0L);
        gmr gmrVar2 = ((cyg) this.z).f13744b;
        cyg.ai(gmrVar2);
        this.f9871c = new fou(gmrVar2, "backoff", 0L);
        gmr gmrVar3 = ((cyg) this.z).f13744b;
        cyg.ai(gmrVar3);
        this.f9870b = new fou(gmrVar3, "last_upload", 0L);
        gmr gmrVar4 = ((cyg) this.z).f13744b;
        cyg.ai(gmrVar4);
        this.f9873g = new fou(gmrVar4, "last_upload_attempt", 0L);
        gmr gmrVar5 = ((cyg) this.z).f13744b;
        cyg.ai(gmrVar5);
        this.f9872e = new fou(gmrVar5, "midnight_offset", 0L);
    }

    @Override // g.aiq
    public final void i() {
    }

    public final Pair j(String str) {
        bmj bmjVar;
        _e();
        cyg cygVar = (cyg) this.z;
        cygVar.f13743ab.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashMap hashMap = this._aw;
        bmj bmjVar2 = (bmj) hashMap.get(str);
        if (bmjVar2 != null && elapsedRealtime < bmjVar2.f11830c) {
            return new Pair(bmjVar2.f11828a, Boolean.valueOf(bmjVar2.f11829b));
        }
        long o = cygVar.f13747e.o(str, gad.ax) + elapsedRealtime;
        try {
            dez i = xo.i(cygVar.v);
            boolean z = i.f14079b;
            String str2 = i.f14078a;
            bmjVar = str2 != null ? new bmj(str2, z, o) : new bmj("", z, o);
        } catch (Exception e2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.o.i(e2, "Unable to get advertising id");
            bmjVar = new bmj("", false, o);
        }
        hashMap.put(str, bmjVar);
        return new Pair(bmjVar.f11828a, Boolean.valueOf(bmjVar.f11829b));
    }

    public final String k(String str, boolean z) {
        _e();
        String str2 = z ? (String) j(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest ap = dkq.ap();
        if (ap == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, ap.digest(str2.getBytes())));
    }
}
