package com.bytedance.msdk.s;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {
    private static volatile ia dq;

    /* renamed from: d, reason: collision with root package name */
    private Key f1249d;
    private Cipher ox;

    private ia() {
        try {
            this.f1249d = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.bytedance.msdk.core.dq.d().gx(), 0)));
            this.ox = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static ia dq() {
        if (dq == null) {
            synchronized (ia.class) {
                try {
                    if (dq == null) {
                        dq = new ia();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public String dq(com.bytedance.msdk.d.s sVar) {
        if (sVar == null || MediationConstant.ADN_PANGLE.equals(sVar.m())) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(sVar.lk())) {
                jSONObject.putOpt("t", sVar.lk());
            }
            if (!TextUtils.isEmpty(sVar.py())) {
                jSONObject.putOpt(ada.COLUMN_DOMAIN, sVar.py());
            }
            jSONObject.putOpt("e", String.valueOf(sVar.dk()));
            if (!TextUtils.isEmpty(sVar.xj())) {
                jSONObject.putOpt("an", sVar.xj());
            }
            if (!TextUtils.isEmpty(sVar.bf())) {
                jSONObject.putOpt("aun", sVar.bf());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        try {
            return dq(jSONObject.toString().getBytes());
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public String dq(byte[] bArr) throws Exception {
        if (bArr == null) {
            return null;
        }
        if (this.ox == null) {
            this.f1249d = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.bytedance.msdk.core.dq.d().gx(), 0)));
            this.ox = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        }
        this.ox.init(1, this.f1249d);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = length - i;
            if (i3 <= 0) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return Base64.encodeToString(byteArray, 2);
            }
            byte[] doFinal = i3 > 117 ? this.ox.doFinal(bArr, i, 117) : this.ox.doFinal(bArr, i, i3);
            byteArrayOutputStream.write(doFinal, 0, doFinal.length);
            i2++;
            i = i2 * 117;
        }
    }
}
