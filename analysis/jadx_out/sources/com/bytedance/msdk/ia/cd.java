package com.bytedance.msdk.ia;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.X509EncodedKeySpec;
import java.util.Map;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class cd {
    private static String d(String str, String str2) {
        try {
            return dq.dq(str.getBytes(StandardCharsets.UTF_8), str2);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String dq(int i) {
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        for (int i2 = 0; i2 < i; i2++) {
            int nextInt = secureRandom.nextInt(3);
            if (nextInt == 0) {
                sb.append(secureRandom.nextInt(10));
            } else if (nextInt == 1) {
                sb.append((char) (secureRandom.nextInt(25) + 65));
            } else if (nextInt == 2) {
                sb.append((char) (secureRandom.nextInt(25) + 97));
            }
        }
        return sb.toString();
    }

    public static String dq(com.bytedance.msdk.api.ox oxVar) {
        if (oxVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MediationConstant.EXTRA_ADN_NAME, oxVar.kk());
            jSONObject.put("custom_adn_name", oxVar.o());
            jSONObject.put("slot_id", oxVar.no());
            jSONObject.put("level_tag", oxVar.q());
            jSONObject.put(MediationConstant.KEY_ECPM, oxVar.mp());
            jSONObject.put("bidding_type", oxVar.jy());
            jSONObject.put("error_msg", oxVar.f());
            jSONObject.put("request_id", oxVar.fw());
            jSONObject.put("ad_rit_type", oxVar.d());
            jSONObject.put("ad_sub_rit_type", oxVar.ox());
            jSONObject.put("segment_id", oxVar.p());
            jSONObject.put("abtest_id", oxVar.mn());
            jSONObject.put("channel", oxVar.s());
            jSONObject.put("sub_channel", oxVar.iw());
            jSONObject.put("scenario_id", oxVar.ia());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        String jSONObject2 = jSONObject.toString();
        if (TextUtils.isEmpty(jSONObject2)) {
            return null;
        }
        try {
            String dq = dq(16);
            String d2 = d(jSONObject2, dq);
            String dq2 = dq(dq, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7aAsZzOAmVVuIl0EZtpY\nPkJGdr82VIOzPBDYNEOBK0tfk/oSWyY8yZDpeYuhNuSPySmhaN8Apn3HGfL1Eq6t\nSE3OdAovRJjnilU/5ugSM/nr5yMy6WRvJUskvQ9F3PF9MLez8ZJxVDb4tgUXjq2S\n1QKSP+NwAKdY+P/H8SD5evamqCpvzO1IwpqznNI2HGAo/Kdm5OQ+Yq47A31dDUSH\nVF/TTzTfae8j6lanqgz9DmFs+kqoy253aXlz8H0z8J3VpmOGvnOUiS00Hg5SILV0\nsoXtS9JKK/V3gXmbXWyFvZhuIvLqk3C8AdyZuDdy1GAI3GjI4wjtiMd11zSTECrV\ntQIDAQAB");
            return String.format("%04d", Integer.valueOf(dq2.length())) + dq2 + d2;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String dq(String str, String str2) {
        try {
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 0)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
            cipher.init(1, generatePublic);
            return Base64.encodeToString(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean dq() {
        Map<String, Object> ir = com.bytedance.msdk.core.d.no().ir();
        Map<String, Object> op = com.bytedance.msdk.core.d.no().op();
        if (ir != null) {
            try {
                if (ir.get("eefo") instanceof Boolean) {
                    return ((Boolean) ir.get("eefo")).booleanValue();
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (op == null || !(op.get("eefo") instanceof Boolean)) {
            return false;
        }
        return ((Boolean) op.get("eefo")).booleanValue();
    }
}
