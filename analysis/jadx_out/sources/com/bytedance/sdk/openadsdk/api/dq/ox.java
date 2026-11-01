package com.bytedance.sdk.openadsdk.api.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import g.hat;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements Bridge {
    private DownloadModel dq;

    public ox(DownloadModel downloadModel) {
        this.dq = downloadModel;
    }

    public DeepLink bl() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getDeepLink();
        }
        return null;
    }

    public boolean c() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.autoInstallWithoutNotification();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case ValueSetConstants.VALUE_DOWNLOAD_MODE_FORCE_WIFI /* 223417 */:
                cd();
                return null;
            case ValueSetConstants.VALUE_DOWNLOAD_MODE_FORCE_HIDE_TOAST /* 223419 */:
                r();
                return null;
            case ValueSetConstants.VALUE_DOWNLOAD_MODE_FORCE_HIDE_NOTIFICATION /* 223420 */:
                i();
                return null;
            case 223430:
                if (valueSet != null) {
                    return (T) dq((String) valueSet.objectValue(223431, String.class));
                }
                return null;
            default:
                return null;
        }
    }

    public void cd() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            downloadModel.forceWifi();
        }
    }

    public IDownloadFileUriProvider ce() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getDownloadFileUriProvider();
        }
        return null;
    }

    public List<String> d() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getBackupUrls();
        }
        return null;
    }

    public DownloadModel dq(String str) {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.setFilePath(str);
        }
        return null;
    }

    public String dq() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getDownloadUrl();
        }
        return null;
    }

    public boolean e() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isAd();
        }
        return false;
    }

    public boolean er() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.shouldDownloadWithPatchApply();
        }
        return false;
    }

    public String f() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getFilePath();
        }
        return null;
    }

    public String fw() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getFileName();
        }
        return null;
    }

    public JSONObject gh() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getDownloadSettings();
        }
        return null;
    }

    public String h() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getPackageName();
        }
        return null;
    }

    public void i() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            downloadModel.forceHideNotification();
        }
    }

    public String ia() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getName();
        }
        return null;
    }

    public boolean ig() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isShowNotification();
        }
        return false;
    }

    public int ir() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getModelType();
        }
        return 0;
    }

    public long iw() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getExpectFileLength();
        }
        return 0L;
    }

    public int j() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getFunnelType();
        }
        return 0;
    }

    public String ji() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getAppIcon();
        }
        return null;
    }

    public boolean jy() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isVisibleInDownloadsUi();
        }
        return false;
    }

    public int k() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getVersionCode();
        }
        return 0;
    }

    public String kk() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getMimeType();
        }
        return null;
    }

    public String kx() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getLogExtra();
        }
        return null;
    }

    public boolean l() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.distinctDir();
        }
        return false;
    }

    public boolean le() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.needIndependentProcess();
        }
        return false;
    }

    public long mn() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getExtraValue();
        }
        return 0L;
    }

    public boolean mp() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isNeedWifi();
        }
        return false;
    }

    public List<String> n() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getClickTrackUrl();
        }
        return null;
    }

    public String nh() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getStartToast();
        }
        return null;
    }

    public boolean no() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isShowToast();
        }
        return false;
    }

    public Map<String, String> o() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getHeaders();
        }
        return null;
    }

    public boolean ob() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isAutoInstall();
        }
        return false;
    }

    public JSONObject op() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getExtra();
        }
        return null;
    }

    public String ox() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getNotificationJumpUrl();
        }
        return null;
    }

    public long p() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getId();
        }
        return 0L;
    }

    public boolean q() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.isInExternalPublicDir();
        }
        return false;
    }

    public void r() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            downloadModel.forceHideToast();
        }
    }

    public String s() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getMd5();
        }
        return null;
    }

    public boolean t() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.enablePause();
        }
        return false;
    }

    public com.ss.android.download.api.model.p u() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getQuickAppModel();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        String dq = dq();
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_DOWNLOAD_URL, dq);
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_BACKUP_URLS, d());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_NOTIFICATION_JUMP_URL, ox());
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_ID, p());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_MD5, s());
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_EXPECT_FILE_LENGTH, iw());
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_EXTRA_VALUE, mn());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_NAME, ia());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_MIME_TYPE, kk());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_HEADERS, o());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_SHOW_TOAST, no());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_SHOW_NOTIFICATION, ig());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_NEED_WIFI, mp());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_IN_EXTERNAL_PUBLIC_DIR, q());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_VISIBLE_IN_DOWNLOADS_UI, jy());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_FILE_PATH, f());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_FILE_NAME, fw());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_DOWNLOAD_SETTINGS, gh());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_NEED_INDEPENDENT_PROCESS, le());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_VERSION_CODE, k());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_VERSION_NAME, wp());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_MODE_IS_AD, e());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_LOG_EXTRA, kx());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_PACKAGE_NAME, h());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_APP_ICON, ji());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_DEEP_LINK, bl());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_CLICK_TRACK_URL, n());
        sparseArray.put(223430, op());
        f2.o(223431, ir());
        sparseArray.put(223432, u());
        f2.i(223433, c());
        sparseArray.put(223434, ce());
        f2.i(223435, er());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_EXECUTOR_GROUP, wn());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_FUNNEL_TYPE, j());
        sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODE_GET_START_TOAST, nh());
        sparseArray.put(223432, vf());
        f2.i(223433, ob());
        f2.i(223434, l());
        f2.i(223435, t());
        return f2.k();
    }

    public String vf() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getSdkMonitorScene();
        }
        return null;
    }

    public int wn() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getExecutorGroup();
        }
        return 0;
    }

    public String wp() {
        DownloadModel downloadModel = this.dq;
        if (downloadModel != null) {
            return downloadModel.getVersionName();
        }
        return null;
    }
}
