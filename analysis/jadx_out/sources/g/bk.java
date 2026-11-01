package g;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzcdr;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f11719a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11720b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11721c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f11722d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11723e;

    public bk(zzcdr zzcdrVar, String str, String str2, int i) {
        this.f11719a = str;
        this.f11720b = str2;
        this.f11723e = i;
        this.f11721c = zzcdrVar;
    }

    public /* synthetic */ bk(ccp ccpVar, int i, bgm bgmVar, Intent intent) {
        this.f11719a = ccpVar;
        this.f11723e = i;
        this.f11720b = bgmVar;
        this.f11721c = intent;
    }

    public /* synthetic */ bk(eax eaxVar, int i, Exception exc, byte[] bArr, Map map) {
        this.f11719a = eaxVar;
        this.f11723e = i;
        this.f11720b = exc;
        this.f11721c = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11722d) {
            case 0:
                HashMap p = tn.p("event", "precacheComplete");
                p.put("src", (String) this.f11719a);
                p.put("cachedSrc", (String) this.f11720b);
                p.put("totalBytes", Integer.toString(this.f11723e));
                zzcdr.d((zzcdr) this.f11721c, p);
                break;
            case 1:
                eax eaxVar = (eax) this.f11719a;
                Exception exc = (Exception) this.f11720b;
                byte[] bArr = (byte[]) this.f11721c;
                cyg cygVar = ((yh) eaxVar.f15210b).f20338a;
                dkq dkqVar = cygVar.m;
                bgm bgmVar = cygVar.z;
                int i = this.f11723e;
                if (i != 200 && i != 204) {
                    if (i == 304) {
                        i = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD;
                    }
                    cyg.ak(bgmVar);
                    bgmVar.f11520g.e(Integer.valueOf(i), "Network Request for Deferred Deep Link failed. response, exception", exc);
                    break;
                }
                if (exc == null) {
                    gmr gmrVar = cygVar.f13744b;
                    cyg.ai(gmrVar);
                    gmrVar.t.f(true);
                    if (bArr == null || bArr.length == 0) {
                        cyg.ak(bgmVar);
                        bgmVar.o.h("Deferred Deep Link response empty.");
                        break;
                    } else {
                        try {
                            JSONObject jSONObject = new JSONObject(new String(bArr));
                            String optString = jSONObject.optString("deeplink", "");
                            String optString2 = jSONObject.optString("gclid", "");
                            double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                            if (TextUtils.isEmpty(optString)) {
                                cyg.ak(bgmVar);
                                bgmVar.o.h("Deferred Deep Link is empty.");
                            } else {
                                cyg.ai(dkqVar);
                                cyg cygVar2 = (cyg) dkqVar.z;
                                if (!TextUtils.isEmpty(optString)) {
                                    Context context = cygVar2.v;
                                    Context context2 = cygVar2.v;
                                    List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                                    if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                                        Bundle bundle = new Bundle();
                                        bundle.putString("gclid", optString2);
                                        bundle.putString("_cis", "ddp");
                                        cygVar.f13745c.au(LiveConfigKey.AUTO, "_cmp", bundle);
                                        if (!TextUtils.isEmpty(optString)) {
                                            try {
                                                SharedPreferences.Editor edit = context2.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                                edit.putString("deeplink", optString);
                                                edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                                                if (edit.commit()) {
                                                    context2.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                                }
                                            } catch (RuntimeException e2) {
                                                bgm bgmVar2 = ((cyg) dkqVar.z).z;
                                                cyg.ak(bgmVar2);
                                                bgmVar2.f11518b.i(e2, "Failed to persist Deferred Deep Link. exception");
                                            }
                                        }
                                    }
                                }
                                cyg.ak(bgmVar);
                                bgmVar.f11520g.e(optString2, "Deferred Deep Link validation failed. gclid, deep link", optString);
                            }
                            break;
                        } catch (JSONException e3) {
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.i(e3, "Failed to parse the Deferred Deep Link response. exception");
                            return;
                        }
                    }
                }
                cyg.ak(bgmVar);
                bgmVar.f11520g.e(Integer.valueOf(i), "Network Request for Deferred Deep Link failed. response, exception", exc);
                break;
            default:
                ccp ccpVar = (ccp) this.f11719a;
                bgm bgmVar3 = (bgm) this.f11720b;
                Intent intent = (Intent) this.f11721c;
                ir irVar = (ir) ((Service) ccpVar.f12646d);
                int i2 = this.f11723e;
                if (irVar.zzc(i2)) {
                    bgmVar3.f11519c.i(Integer.valueOf(i2), "Local AppMeasurementService processed last upload request. StartId");
                    ccpVar.e().f11519c.h("Completed wakeful intent.");
                    irVar.b(intent);
                    break;
                }
                break;
        }
    }
}
