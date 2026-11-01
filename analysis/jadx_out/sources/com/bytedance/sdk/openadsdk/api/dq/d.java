package com.bytedance.sdk.openadsdk.api.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.download.DownloadEventConfig;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements Bridge {
    private DownloadEventConfig dq;

    public d(DownloadEventConfig downloadEventConfig) {
        this.dq = downloadEventConfig;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 223515) {
            if (valueSet == null) {
                return null;
            }
            dq(((Integer) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_SET_DOWNLOAD_SCENE_PARAMETER, Integer.class)).intValue());
            return null;
        }
        if (i != 223517 || valueSet == null) {
            return null;
        }
        dq((String) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_SET_REFER_PARAMETER, String.class));
        return null;
    }

    public String d() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickButtonTag();
        }
        return null;
    }

    public String dq() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getRefer();
        }
        return null;
    }

    public void dq(int i) {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            downloadEventConfig.setDownloadScene(i);
        }
    }

    public void dq(String str) {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            downloadEventConfig.setRefer(str);
        }
    }

    public String ia() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickInstallLabel();
        }
        return null;
    }

    public boolean ig() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.isEnableClickEvent();
        }
        return false;
    }

    public String iw() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickPauseLabel();
        }
        return null;
    }

    public JSONObject jy() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getParamsJson();
        }
        return null;
    }

    public String kk() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getStorageDenyLabel();
        }
        return null;
    }

    public String mn() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickContinueLabel();
        }
        return null;
    }

    public boolean mp() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.isEnableV3Event();
        }
        return false;
    }

    public int no() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getDownloadScene();
        }
        return 0;
    }

    public Object o() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getExtraEventObject();
        }
        return null;
    }

    public String ox() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickItemTag();
        }
        return null;
    }

    public String p() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickLabel();
        }
        return null;
    }

    public JSONObject q() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getExtraJson();
        }
        return null;
    }

    public String s() {
        DownloadEventConfig downloadEventConfig = this.dq;
        if (downloadEventConfig != null) {
            return downloadEventConfig.getClickStartLabel();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        String dq = dq();
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_REFER, dq);
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_BUTTON_TAG, d());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_ITEM_TAG, ox());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_LABEL, p());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_START_LABEL, s());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_PAUSE_LABEL, iw());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_CONTINUE_LABEL, mn());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_CLICK_INSTALL_LABEL, ia());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_STORAGE_DENY_LABEL, kk());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_EXTRA_EVENT_OBJECT, o());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_DOWNLOAD_SCENE, no());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_IS_ENABLE_CLICK_EVENT, ig());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_IS_ENABLE_V3_EVENT, mp());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_EXTRA_JSON, q());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG_GET_PARAMS_JSON, jy());
        return f2.k();
    }
}
