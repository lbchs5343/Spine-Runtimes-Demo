package g;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class fut implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.e m = atf.g(context).m();
        if (m == null || !m.isShowWeChat) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("icon", R.mipmap.dbac);
        bundle.putString(abn.EXTRA_TITLE, m.weChatTitle);
        bundle.putString("desc", m.weChatDesc);
        bundle.putString("wechat_id", m.weChatId);
        if (TextUtils.isEmpty(m.weChatImageUrl)) {
            bundle.putInt("image", R.drawable.wechat_time);
        } else {
            bundle.putString("image_url", m.weChatImageUrl);
        }
        kj.t((Activity) context, new gvp(), bundle, false);
        return true;
    }
}
