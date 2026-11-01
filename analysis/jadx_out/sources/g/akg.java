package g;

import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class akg extends fzx {
    public static void a(akg akgVar, HashMap hashMap, int i) {
        fzc fzcVar = new fzc();
        fzcVar.f17690c = i;
        fzcVar.f17689b = akgVar;
        if (hashMap != null) {
            Object obj = hashMap.get("lel");
            if (obj instanceof JSONArray) {
                akgVar.g(fzcVar, (JSONArray) obj);
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lottieEvent", true);
            if (hashMap != null) {
                Object obj2 = hashMap.get(MediationConstant.EXTRA_DURATION);
                if (obj2 instanceof Long) {
                    jSONObject.put(MediationConstant.EXTRA_DURATION, obj2);
                    jSONObject.put("uttieUrl", akgVar.af);
                }
            }
            fzcVar.f17691d = jSONObject;
            akgVar.tl.dq(fzcVar, akgVar, akgVar);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // g.fzx
    public final void d() {
        View view = this.ia;
        if (view == null || ((gkb) view).getVisibility() != 0) {
            return;
        }
        ((gkb) this.ia).setImageAssetDelegate(new fnq(21, this));
        ((gkb) this.ia).dq();
        w();
    }

    public final void g(fzc fzcVar, JSONArray jSONArray) {
        dlv ox;
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("vid");
                    if (!TextUtils.isEmpty(optString)) {
                        int optInt = optJSONObject.optInt(LiveConfigKey.HIGH, 0);
                        dlv dlvVar = fzcVar.f17689b;
                        if (dlvVar == null) {
                            ox = null;
                        } else {
                            while (dlvVar.bl() != null) {
                                dlvVar = dlvVar.bl();
                            }
                            ox = dlvVar.ox(optString);
                        }
                        if (ox != null) {
                            ox.d(optInt == 0 ? 0 : 8);
                            View kk = ox.kk();
                            if (kk instanceof gkb) {
                                gkb gkbVar = (gkb) kk;
                                if (optInt == 0) {
                                    gkbVar.dq();
                                    w();
                                } else {
                                    gkbVar.iw();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void w() {
        fzc fzcVar = new fzc();
        fzcVar.f17690c = 21;
        fzcVar.f17689b = this;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lottieEvent", true);
            jSONObject.put("uttieUrl", this.af);
            fzcVar.f17691d = jSONObject;
            this.tl.dq(fzcVar, this, this);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // g.fzx, g.dlv
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public final gkb ox() {
        gkb ox = super.ox();
        ox.setTextDelegate(new bnb(this, ox));
        ox.setLottieClicklistener(new eie(22, this));
        ox.setLottieAnimListener(new emr(21, this));
        return ox;
    }
}
