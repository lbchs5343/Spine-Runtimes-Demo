package com.bytedance.sdk.openadsdk.api.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.download.DownloadController;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements Bridge {
    private DownloadController dq;

    public dq(DownloadController downloadController) {
        this.dq = downloadController;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 223317) {
            if (valueSet == null) {
                return null;
            }
            d(((Boolean) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_PARAMETER_ENABLE_NEW_ACTIVITY, Boolean.class)).booleanValue());
            return null;
        }
        switch (i) {
            case ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_SET_DOWNLOAD_MODE /* 223311 */:
                if (valueSet != null) {
                    dq(((Integer) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_PARAMETER_MODE, Integer.class)).intValue());
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_SET_LINK_MODE /* 223312 */:
                if (valueSet != null) {
                    d(((Integer) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_PARAMETER_LINK_MODE, Integer.class)).intValue());
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_SET_ENABLE_SHOW_COMPLIANCE_DIALOG /* 223313 */:
                if (valueSet != null) {
                    dq(((Boolean) valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_PARAMETER_ENABLE_SHOW_COMPLIANCE_DIALOG, Boolean.class)).booleanValue());
                    break;
                }
                break;
        }
        return null;
    }

    public int d() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getDownloadMode();
        }
        return 0;
    }

    public void d(int i) {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            downloadController.setLinkMode(i);
        }
    }

    public void d(boolean z) {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            downloadController.setEnableNewActivity(z);
        }
    }

    public int dq() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getLinkMode();
        }
        return 0;
    }

    public void dq(int i) {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            downloadController.setDownloadMode(i);
        }
    }

    public void dq(boolean z) {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            downloadController.setEnableShowComplianceDialog(z);
        }
    }

    public boolean f() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.enableAM();
        }
        return false;
    }

    public boolean ia() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.shouldUseNewWebView();
        }
        return false;
    }

    public boolean ig() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.enableShowComplianceDialog();
        }
        return false;
    }

    public int iw() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getDowloadChunkCount();
        }
        return 0;
    }

    public boolean jy() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.enableAH();
        }
        return false;
    }

    public int kk() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getInterceptFlag();
        }
        return 0;
    }

    public Object mn() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getExtraClickOperation();
        }
        return null;
    }

    public boolean mp() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.isAutoDownloadOnCardShow();
        }
        return false;
    }

    public Object no() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getExtraObject();
        }
        return null;
    }

    public JSONObject o() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.getExtraJson();
        }
        return null;
    }

    public boolean ox() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.isEnableBackDialog();
        }
        return false;
    }

    public boolean p() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.isAddToDownloadManage();
        }
        return false;
    }

    public boolean q() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.enableNewActivity();
        }
        return false;
    }

    public boolean s() {
        DownloadController downloadController = this.dq;
        if (downloadController != null) {
            return downloadController.isEnableMultipleDownload();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_LINK_MODE, dq());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_DOWNLOAD_MODE, d());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_IS_ENABLE_BACK_DIALOG, ox());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_IS_ADD_TO_DOWNLOAD_MANAGE, p());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_IS_ENABLE_MULTIPLE_DOWNLOAD, s());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_DOWNLOAD_CHUNK_COUNT, iw());
        Object mn = mn();
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_EXTRA_CLICK_OPERATION, mn);
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_SHOULD_USE_NEW_WEB_VIEW, ia());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_INTERCEPT_FLAG, kk());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_EXTRA_JSON, o());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_EXTRA_OBJECT, no());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_GET_EXTRA_JSON, o());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_ENABLE_SHOW_COMPLIANCE_DIALOG, ig());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_IS_AUTO_DOWNLOAD_ON_CARD_SHOW, mp());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_ENABLE_NEW_ACTIVITY, q());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_ENABLE_AH, jy());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER_ENABLE_AM, f());
        return f2.k();
    }
}
