package g;

import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class abn extends fyx {
    public static final String EXTRA_AUTO_SET_SUB_TITLE = "autoSetSubTitle";
    public static final String EXTRA_AUTO_SET_TITLE = "autoSetTitle";
    public static final String EXTRA_IS_SHOW_OVERRIDE_FAIL_TIPS = "isShowOverrideFailTips";
    public static final String EXTRA_IS_SUBTITLE_SHOW_FULL_URL = "isSubtitleShowFullUrl";
    public static final String EXTRA_SHARE_ATTACHMENT_TEXT = "shareAttachmentText";
    public static final String EXTRA_SOURCE = "source";
    public static final String EXTRA_SUB_TITLE = "subTitle";
    public static final String EXTRA_TITLE = "title";
    public static final String EXTRA_UA_APP_NAME = "name";
    public static final String EXTRA_URL = "url";

    @Override // g.fyx
    public int getLayoutId() {
        return R.layout.activity_webview_progress_top;
    }

    @Override // g.fyx
    public void initWebViewArgs() {
        super.initWebViewArgs();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.webViewArgs.setInitUrl(extras.getString(EXTRA_URL));
            this.webViewArgs.setInitTitle(extras.getString(EXTRA_TITLE));
            this.webViewArgs.setInitSubTitle(extras.getString(EXTRA_SUB_TITLE));
            this.webViewArgs.setAutoSetTitle(extras.getBoolean(EXTRA_AUTO_SET_TITLE, true));
            this.webViewArgs.setAutoSetSubTitle(extras.getBoolean(EXTRA_AUTO_SET_SUB_TITLE, true));
            this.webViewArgs.setShareAttachmentText(extras.getString(EXTRA_SHARE_ATTACHMENT_TEXT));
            this.webViewArgs.setUAAppName(extras.getString(EXTRA_UA_APP_NAME));
            this.webViewArgs.setShowOverrideFailTips(extras.getBoolean(EXTRA_IS_SHOW_OVERRIDE_FAIL_TIPS));
            this.webViewArgs.setSubtitleShowFullUrl(extras.getBoolean(EXTRA_IS_SUBTITLE_SHOW_FULL_URL));
        }
        this.webViewArgs.setShareable(true);
        this.webViewArgs.setShortcutable(true);
        this.webViewArgs.setCopyLinkable(true);
        this.webViewArgs.setZoomable(true);
    }

    @Override // g.fyx
    public void loadData() {
        String url = this.webView.getUrl();
        if (TextUtils.isEmpty(url)) {
            url = this.webViewArgs.getInitUrl();
        }
        if (TextUtils.isEmpty(url)) {
            gm.f(this.context, R.string.webview_url_empty);
        } else {
            this.webView.loadUrl(url);
        }
    }

    @Override // g.dmn
    public void showData(String str, String str2) {
    }
}
