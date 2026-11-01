package g;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.Iterator;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public final /* synthetic */ class aiy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ csp f10292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10293b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bundle f10294c;

    public /* synthetic */ aiy(csp cspVar, Bundle bundle, int i) {
        this.f10293b = i;
        this.f10292a = cspVar;
        this.f10294c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10293b) {
            case 0:
                csp cspVar = this.f10292a;
                bgb bgbVar = cspVar.s;
                cyg cygVar = (cyg) cspVar.z;
                Bundle bundle = this.f10294c;
                if (bundle == null) {
                    gmr gmrVar = cygVar.f13744b;
                    cyg.ai(gmrVar);
                    gmrVar.w.r(new Bundle());
                    break;
                } else {
                    gmr gmrVar2 = cygVar.f13744b;
                    dkq dkqVar = cygVar.m;
                    bgm bgmVar = cygVar.z;
                    cyg.ai(gmrVar2);
                    Bundle p = gmrVar2.w.p();
                    for (String str : bundle.keySet()) {
                        Object obj = bundle.get(str);
                        if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                            cyg.ai(dkqVar);
                            if (dkq.r(obj)) {
                                dkq.v(bgbVar, null, 27, null, null, 0);
                            }
                            cyg.ak(bgmVar);
                            bgmVar.h.e(str, "Invalid default event parameter type. Name, value", obj);
                        } else if (dkq.al(str)) {
                            cyg.ak(bgmVar);
                            bgmVar.h.i(str, "Invalid default event parameter name. Name");
                        } else if (obj == null) {
                            p.remove(str);
                        } else {
                            cyg.ai(dkqVar);
                            if (dkqVar.br("param", str, 100, obj)) {
                                dkqVar.az(p, str, obj);
                            }
                        }
                    }
                    cyg.ai(dkqVar);
                    int r = cygVar.f13747e.r();
                    if (p.size() > r) {
                        Iterator it = new TreeSet(p.keySet()).iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            i++;
                            if (i > r) {
                                p.remove(str2);
                            }
                        }
                        cyg.ai(dkqVar);
                        dkq.v(bgbVar, null, 26, null, null, 0);
                        cyg.ak(bgmVar);
                        bgmVar.h.h("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                    gmr gmrVar3 = cygVar.f13744b;
                    cyg.ai(gmrVar3);
                    gmrVar3.w.r(p);
                    dbb ao = cygVar.ao();
                    ao._e();
                    ao.zza();
                    ao.s(new eax(ao, ao.q(false), p, 20));
                    break;
                }
                break;
            case 1:
                csp cspVar2 = this.f10292a;
                cspVar2._e();
                cspVar2.zza();
                Bundle bundle2 = this.f10294c;
                String string = bundle2.getString(abn.EXTRA_UA_APP_NAME);
                String string2 = bundle2.getString(LiveConfigKey.ORIGIN);
                ckd.bf(string);
                ckd.bf(string2);
                ckd.k(bundle2.get("value"));
                cyg cygVar2 = (cyg) cspVar2.z;
                boolean as = cygVar2.as();
                dkq dkqVar2 = cygVar2.m;
                if (!as) {
                    bgm bgmVar2 = cygVar2.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11519c.h("Conditional property not set since app measurement is disabled");
                    break;
                } else {
                    cmd cmdVar = new cmd(string, bundle2.getLong("triggered_timestamp"), bundle2.get("value"), string2);
                    try {
                        cyg.ai(dkqVar2);
                        bundle2.getString(PluginConstants.KEY_APP_ID);
                        ctf cb = dkqVar2.cb(bundle2.getString("triggered_event_name"), bundle2.getBundle("triggered_event_params"), string2, 0L, true);
                        cyg.ai(dkqVar2);
                        bundle2.getString(PluginConstants.KEY_APP_ID);
                        ctf cb2 = dkqVar2.cb(bundle2.getString("timed_out_event_name"), bundle2.getBundle("timed_out_event_params"), string2, 0L, true);
                        cyg.ai(dkqVar2);
                        bundle2.getString(PluginConstants.KEY_APP_ID);
                        cygVar2.ao().t(new bou(bundle2.getString(PluginConstants.KEY_APP_ID), string2, cmdVar, bundle2.getLong("creation_timestamp"), false, bundle2.getString("trigger_event_name"), cb2, bundle2.getLong("trigger_timeout"), cb, bundle2.getLong("time_to_live"), dkqVar2.cb(bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), string2, 0L, true)));
                        break;
                    } catch (IllegalArgumentException unused) {
                        return;
                    }
                }
            default:
                csp cspVar3 = this.f10292a;
                cspVar3._e();
                cspVar3.zza();
                Bundle bundle3 = this.f10294c;
                String string3 = bundle3.getString(abn.EXTRA_UA_APP_NAME);
                ckd.bf(string3);
                cyg cygVar3 = (cyg) cspVar3.z;
                if (!cygVar3.as()) {
                    bgm bgmVar3 = cygVar3.z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11519c.h("Conditional property not cleared since app measurement is disabled");
                    break;
                } else {
                    cmd cmdVar2 = new cmd(string3, 0L, null, "");
                    try {
                        dkq dkqVar3 = cygVar3.m;
                        cyg.ai(dkqVar3);
                        bundle3.getString(PluginConstants.KEY_APP_ID);
                        cygVar3.ao().t(new bou(bundle3.getString(PluginConstants.KEY_APP_ID), "", cmdVar2, bundle3.getLong("creation_timestamp"), bundle3.getBoolean("active"), bundle3.getString("trigger_event_name"), null, bundle3.getLong("trigger_timeout"), null, bundle3.getLong("time_to_live"), dkqVar3.cb(bundle3.getString("expired_event_name"), bundle3.getBundle("expired_event_params"), "", bundle3.getLong("creation_timestamp"), true)));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        return;
                    }
                }
        }
    }
}
