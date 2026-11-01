package g;

import android.content.SharedPreferences;
import android.util.Pair;

/* loaded from: classes3.dex */
public final class gmr extends bkw {

    /* renamed from: a, reason: collision with root package name */
    public static final Pair f18411a = new Pair("", 0L);
    public final dxb al;
    public final fou ap;

    /* renamed from: b, reason: collision with root package name */
    public String f18412b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18413c;

    /* renamed from: g, reason: collision with root package name */
    public final dxb f18414g;
    public final dxb h;
    public final fou j;
    public final fou k;
    public long l;
    public final avz m;
    public final fou o;
    public final dxb p;
    public final fou q;
    public SharedPreferences r;
    public dkh s;
    public final avz t;
    public boolean u;
    public final avz v;
    public final dpa w;
    public final avz x;

    public gmr(cyg cygVar) {
        super(cygVar);
        this.o = new fou(this, "session_timeout", 1800000L);
        this.m = new avz(this, "start_new_session", true);
        this.k = new fou(this, "last_pause_time", 0L);
        this.al = new dxb(this, "non_personalized_ads");
        this.v = new avz(this, "allow_remote_dynamite", false);
        this.ap = new fou(this, "first_open_time", 0L);
        ckd.bf("app_install_time");
        this.h = new dxb(this, "app_instance_id");
        this.x = new avz(this, "app_backgrounded", false);
        this.t = new avz(this, "deep_link_retrieval_complete", false);
        this.q = new fou(this, "deep_link_retrieval_attempts", 0L);
        this.f18414g = new dxb(this, "firebase_feature_rollouts");
        this.p = new dxb(this, "deferred_attribution_cache");
        this.j = new fou(this, "deferred_attribution_cache_timestamp", 0L);
        this.w = new dpa(this);
    }

    public final boolean aq(int i) {
        int i2 = ar().getInt("consent_source", 100);
        rs rsVar = rs.f19921a;
        return i <= i2;
    }

    public final SharedPreferences ar() {
        _e();
        an();
        ckd.k(this.r);
        return this.r;
    }

    public final rs as() {
        _e();
        return rs.d(ar().getString("consent_settings", "G1"));
    }

    public final void at(boolean z) {
        _e();
        bgm bgmVar = ((cyg) this.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.i(Boolean.valueOf(z), "App measurement setting deferred collection");
        SharedPreferences.Editor edit = ar().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    public final boolean au(long j) {
        return j - this.o.f() > this.k.f();
    }

    @Override // g.bkw
    public final boolean n() {
        return true;
    }
}
