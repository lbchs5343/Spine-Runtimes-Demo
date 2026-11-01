package com.bytedance.msdk.dq.ox;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q {

    /* renamed from: d, reason: collision with root package name */
    private ValueSet f1068d;
    private ValueSet dq;
    private ValueSet ox;
    private com.bytedance.sdk.openadsdk.f.d.ox.dq p = new com.bytedance.sdk.openadsdk.f.d.ox.dq(com.bytedance.msdk.core.d.no().l());

    private q(ValueSet valueSet) {
        this.dq = valueSet;
        if (valueSet != null) {
            this.ox = (ValueSet) valueSet.objectValue(8457, ValueSet.class);
            this.f1068d = (ValueSet) this.dq.objectValue(8475, ValueSet.class);
        }
        vw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double bu() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        if (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8312, Bridge.class)) == null || (values = bridge.values()) == null) {
            return -1.0d;
        }
        return values.doubleValue(8482);
    }

    private void cv() {
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 初始化信息 start ----");
        com.bytedance.msdk.dq.s.ox.d("isDebug：" + bl());
        com.bytedance.msdk.dq.s.ox.d("getClassName：" + dq());
        com.bytedance.msdk.dq.s.ox.d("getAppId：" + d());
        com.bytedance.msdk.dq.s.ox.d("getAppName：" + ox());
        com.bytedance.msdk.dq.s.ox.d("getADNName：" + p());
        com.bytedance.msdk.dq.s.ox.d("getAppKey：" + s());
        com.bytedance.msdk.dq.s.ox.d("getInitCallback：" + iw());
        com.bytedance.msdk.dq.s.ox.d("getAgeGroup：" + e());
        com.bytedance.msdk.dq.s.ox.d("isCustom：" + kx());
        com.bytedance.msdk.dq.s.ox.d("getCustomInitMap：" + h());
        com.bytedance.msdk.dq.s.ox.d("getCustomGMConfiguration：" + ji());
        com.bytedance.msdk.dq.s.ox.d("getKsAdapterVersion：" + n());
        com.bytedance.msdk.dq.s.ox.d("getGromoreVersion：" + op());
        com.bytedance.msdk.dq.s.ox.d("getAdmobAdapterVersion：" + ir());
        com.bytedance.msdk.dq.s.ox.d("getBaiduAdapterVersion：" + u());
        com.bytedance.msdk.dq.s.ox.d("getGdtAdapterVersion：" + c());
        com.bytedance.msdk.dq.s.ox.d("getKlevinAdapterVersion：" + ce());
        com.bytedance.msdk.dq.s.ox.d("getMintegralAdapterVersion：" + er());
        com.bytedance.msdk.dq.s.ox.d("getSigmobAdapterVersion：" + wn());
        com.bytedance.msdk.dq.s.ox.d("getUnityAdapterVersion：" + j());
        com.bytedance.msdk.dq.s.ox.d("getMap：" + nh());
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 初始化信息 end ----");
    }

    private void dc() {
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 隐私设置 start ----");
        com.bytedance.msdk.dq.s.ox.d("isCanUseLocation：" + kk());
        jy jy = jy();
        com.bytedance.msdk.dq.s.ox.d("getLocation：".concat(String.valueOf(jy)));
        if (jy != null) {
            com.bytedance.msdk.dq.s.ox.d("getLocation getLatitude：" + jy.dq());
            com.bytedance.msdk.dq.s.ox.d("getLocation getLongitude：" + jy.d());
        }
        com.bytedance.msdk.dq.s.ox.d("appList：" + no());
        com.bytedance.msdk.dq.s.ox.d("isCanUsePhoneState：" + ia());
        com.bytedance.msdk.dq.s.ox.d("isLimitPersonalAds：" + mn());
        com.bytedance.msdk.dq.s.ox.d("getDevImei：" + f());
        com.bytedance.msdk.dq.s.ox.d("isCanUseWifiState：" + k());
        com.bytedance.msdk.dq.s.ox.d("getMacAddress：" + i());
        com.bytedance.msdk.dq.s.ox.d("userPrivacyConfig：" + le());
        com.bytedance.msdk.dq.s.ox.d("isCanUseWriteExternal：" + o());
        com.bytedance.msdk.dq.s.ox.d("isCanUseAndroidId：" + mp());
        com.bytedance.msdk.dq.s.ox.d("getAndroidId：" + cd());
        List<String> wp = wp();
        com.bytedance.msdk.dq.s.ox.d("getAppList：".concat(String.valueOf(wp)));
        if (wp != null) {
            Iterator<String> it = wp.iterator();
            while (it.hasNext()) {
                com.bytedance.msdk.dq.s.ox.d("getAppList item: ".concat(String.valueOf(it.next())));
            }
        }
        List<String> fw = fw();
        com.bytedance.msdk.dq.s.ox.d("getDevImeis：".concat(String.valueOf(fw)));
        if (fw != null) {
            Iterator<String> it2 = fw.iterator();
            while (it2.hasNext()) {
                com.bytedance.msdk.dq.s.ox.d("getDevImeis item: ".concat(String.valueOf(it2.next())));
            }
        }
        com.bytedance.msdk.dq.s.ox.d("getDevOaid：" + r());
        com.bytedance.msdk.dq.s.ox.d("isCanUseOaid：" + gh());
        com.bytedance.msdk.dq.s.ox.d("isCanUseMacAddress：" + ig());
        com.bytedance.msdk.dq.s.ox.d("isProgrammaticRecommend：" + q());
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 隐私设置 end ----");
    }

    public static q dq(ValueSet valueSet) {
        return new q(valueSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double fd() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        if (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8312, Bridge.class)) == null || (values = bridge.values()) == null) {
            return -1.0d;
        }
        return values.doubleValue(8481);
    }

    private void ha() {
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 聚合信息 start ----");
        com.bytedance.msdk.dq.s.ox.d("getHttps：" + vf());
        com.bytedance.msdk.dq.s.ox.d("getWxAppId：" + ob());
        com.bytedance.msdk.dq.s.ox.d("getPublisherDid：" + l());
        com.bytedance.msdk.dq.s.ox.d("isOpenAdnTest：" + t());
        com.bytedance.msdk.dq.s.ox.d("getMediationConfigUserInfoForSegment：" + gx());
        com.bytedance.msdk.dq.s.ox.d("getLocalExtra：" + by());
        com.bytedance.msdk.dq.s.ox.d("getCustomLocalConfig：" + uh());
        com.bytedance.msdk.dq.s.ox.d("getOpensdkVer：" + xz());
        com.bytedance.msdk.dq.s.ox.d("isWxInstalled：" + yy());
        com.bytedance.msdk.dq.s.ox.d("isSupportH265：" + v());
        com.bytedance.msdk.dq.s.ox.d("isSupportSplashZoomout：" + ds());
        com.bytedance.msdk.dq.s.ox.d("---------  sdk 聚合信息 end ----");
    }

    private boolean jw() {
        ValueSet valueSet = this.dq;
        return (valueSet == null || valueSet.isEmpty()) ? false : true;
    }

    private void vw() {
        cv();
        dc();
        ha();
    }

    public boolean bl() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet.booleanValue(1);
        }
        return false;
    }

    public Map by() {
        ValueSet valueSet = this.ox;
        return valueSet != null ? (Map) valueSet.objectValue(8462, Map.class) : new HashMap();
    }

    public String c() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8414) : "";
    }

    public String cd() {
        ValueSet valueSet = this.f1068d;
        return valueSet != null ? valueSet.stringValue(8485) : "";
    }

    public String ce() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8415) : "";
    }

    public String d() {
        if (jw()) {
            return this.dq.stringValue(3);
        }
        return null;
    }

    public void d(ValueSet valueSet) {
        this.f1068d = valueSet;
        dc();
    }

    public String dq() {
        return jw() ? this.dq.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow) : "";
    }

    public boolean ds() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return valueSet.booleanValue(8467);
        }
        return false;
    }

    public int e() {
        return this.p.mp();
    }

    public String er() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8416) : "";
    }

    public String f() {
        ValueSet valueSet = this.f1068d;
        return valueSet != null ? valueSet.stringValue(8484) : "";
    }

    public List<String> fw() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        return (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8311, Bridge.class)) == null || (values = bridge.values()) == null) ? new LinkedList() : (List) values.objectValue(8477, List.class);
    }

    public boolean gh() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        if (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8311, Bridge.class)) == null || (values = bridge.values()) == null) {
            return true;
        }
        return values.booleanValue(8478);
    }

    public Bridge gx() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return (Bridge) valueSet.objectValue(8310, Bridge.class);
        }
        return null;
    }

    public Map h() {
        if (jw()) {
            return (Map) this.dq.objectValue(8400, Map.class);
        }
        return null;
    }

    public String i() {
        ValueSet valueSet = this.f1068d;
        return valueSet != null ? valueSet.stringValue(8487) : "";
    }

    public boolean ia() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8023);
        }
        return true;
    }

    public boolean ig() {
        return k();
    }

    public String ir() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8412) : "";
    }

    public Bridge iw() {
        if (jw()) {
            return (Bridge) this.dq.objectValue(8300, Bridge.class);
        }
        return null;
    }

    public String j() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8418) : "";
    }

    public Bridge ji() {
        if (jw()) {
            return (Bridge) this.dq.objectValue(8401, Bridge.class);
        }
        return null;
    }

    public jy jy() {
        if (fd() == -1.0d || fd() == -1.0d) {
            return null;
        }
        return new jy() { // from class: com.bytedance.msdk.dq.ox.q.1
            @Override // com.bytedance.msdk.dq.ox.jy
            public double d() {
                return q.this.bu();
            }

            @Override // com.bytedance.msdk.dq.ox.jy
            public double dq() {
                return q.this.fd();
            }
        };
    }

    public boolean k() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8480);
        }
        return true;
    }

    public boolean kk() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8024);
        }
        return true;
    }

    public boolean kx() {
        if (jw()) {
            return this.dq.booleanValue(8098);
        }
        return false;
    }

    public String l() {
        ValueSet valueSet = this.ox;
        return valueSet != null ? valueSet.stringValue(8460) : "";
    }

    public Map<String, Object> le() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return (Map) valueSet.objectValue(8554, Map.class);
        }
        return null;
    }

    public boolean mn() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        if (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8311, Bridge.class)) == null || (values = bridge.values()) == null) {
            return false;
        }
        return values.booleanValue(8027);
    }

    public boolean mp() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8479);
        }
        return true;
    }

    public String n() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8410) : "";
    }

    public Map nh() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? (Map) valueSet.objectValue(8425, Map.class) : new HashMap();
    }

    public boolean no() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8026);
        }
        return true;
    }

    public boolean o() {
        ValueSet valueSet = this.f1068d;
        if (valueSet != null) {
            return valueSet.booleanValue(8025);
        }
        return true;
    }

    public String ob() {
        ValueSet valueSet = this.ox;
        return valueSet != null ? valueSet.stringValue(8459) : "";
    }

    public String op() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8411) : "";
    }

    public String ox() {
        return jw() ? this.dq.stringValue(8) : "";
    }

    public String p() {
        return jw() ? this.dq.stringValue(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec) : "";
    }

    public boolean q() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        if (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8311, Bridge.class)) == null || (values = bridge.values()) == null) {
            return true;
        }
        return values.booleanValue(8028);
    }

    public String r() {
        ValueSet valueSet = this.f1068d;
        return valueSet != null ? valueSet.stringValue(8486) : "";
    }

    public String s() {
        return jw() ? this.dq.stringValue(AVMDLDataLoader.KeyIsLiveWatchDurationThreshold) : "";
    }

    public boolean t() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return valueSet.booleanValue(8461);
        }
        return false;
    }

    public String u() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8413) : "";
    }

    public JSONObject uh() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return (JSONObject) valueSet.objectValue(8463, JSONObject.class);
        }
        return null;
    }

    public boolean v() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return valueSet.booleanValue(8466);
        }
        return false;
    }

    public boolean vf() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return valueSet.booleanValue(8458);
        }
        return false;
    }

    public String wn() {
        ValueSet valueSet = this.dq;
        return valueSet != null ? valueSet.stringValue(8417) : "";
    }

    public List<String> wp() {
        Bridge bridge;
        ValueSet values;
        ValueSet valueSet = this.f1068d;
        return (valueSet == null || (bridge = (Bridge) valueSet.objectValue(8311, Bridge.class)) == null || (values = bridge.values()) == null) ? new LinkedList() : (List) values.objectValue(8476, List.class);
    }

    public String xz() {
        ValueSet valueSet = this.ox;
        return valueSet != null ? valueSet.stringValue(8464) : "";
    }

    public boolean yy() {
        ValueSet valueSet = this.ox;
        if (valueSet != null) {
            return valueSet.booleanValue(8465);
        }
        return false;
    }
}
