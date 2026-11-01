package com.bytedance.sdk.component.adexpress.dynamic.dq;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseInternalScrollWidgetImp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseScrollWidgetImp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicClose;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicDislike;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicDislikeFeedBack;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicLeisureWidget;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicLogoAd;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicLogoUnion;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicLottie;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicMutedView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicPrivacyView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRoot;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicSkipCountDown;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicSkipCountDownBtn;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicSkipCountDownContainer;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicSplitLineView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicStarView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTextView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTimeOuter;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTimeOuterContainerWidgetImp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTimeOuterRewardFullSkip;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTimeOuterSkip;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicUnKnowView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicVerticalScrollWidgetImp;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicVideoView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p;

/* loaded from: classes.dex */
public class d {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DynamicBaseWidget dq(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        DynamicBaseWidget dynamicBaseWidget = null;
        if (context != null && dynamicRootView != null && iaVar != null && iaVar.o() != null) {
            switch (iaVar.o().dq()) {
                case -1:
                    dynamicBaseWidget = new DynamicUnKnowView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null && dynamicRootView.getRenderRequest() != null) {
                        dynamicBaseWidget.setCanUseSensor(dynamicRootView.getRenderRequest().mn());
                        break;
                    }
                    break;
                case 0:
                    dynamicBaseWidget = new DynamicTextView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                        dynamicBaseWidget.setCanUseSensor(dynamicRootView.getRenderRequest().mn());
                        break;
                    }
                    break;
                case 1:
                    dynamicBaseWidget = new DynamicImageView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 2:
                    dynamicBaseWidget = new DynamicButton(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 3:
                    dynamicBaseWidget = new DynamicDislike(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 4:
                    dynamicBaseWidget = new DynamicLogoAd(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 5:
                    dynamicBaseWidget = new DynamicLogoUnion(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 6:
                case 9:
                case 17:
                    dynamicBaseWidget = new DynamicBaseWidgetImp(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 7:
                    dynamicBaseWidget = new DynamicVideoView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 8:
                    dynamicBaseWidget = new DynamicRoot(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 10:
                    dynamicBaseWidget = new DynamicMutedView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 11:
                    dynamicBaseWidget = new DynamicStarView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 12:
                    dynamicBaseWidget = new DynamicDislikeFeedBack(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 13:
                    dynamicBaseWidget = new DynamicTimeOuter(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 14:
                    dynamicBaseWidget = new DynamicTimeOuterContainerWidgetImp(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 15:
                    dynamicBaseWidget = p.dq() ? new DynamicTimeOuterRewardFullSkip(context, dynamicRootView, iaVar) : new DynamicTimeOuterSkip(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 16:
                    dynamicBaseWidget = new DynamicImageView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 18:
                    dynamicBaseWidget = new DynamicSplitLineView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 19:
                    dynamicBaseWidget = new DynamicSkipCountDownContainer(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 20:
                    dynamicBaseWidget = new DynamicSkipCountDown(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 21:
                    dynamicBaseWidget = new DynamicSkipCountDownBtn(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 22:
                    dynamicBaseWidget = new DynamicClose(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 23:
                    dynamicBaseWidget = new DynamicPrivacyView(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 24:
                    dynamicBaseWidget = new DynamicBaseScrollWidgetImp(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 25:
                    dynamicBaseWidget = new DynamicLeisureWidget(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 26:
                    dynamicBaseWidget = "vertical".equals(iaVar.o().s().jo()) ? new DynamicVerticalScrollWidgetImp(context, dynamicRootView, iaVar) : new DynamicBaseInternalScrollWidgetImp(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 27:
                    dynamicBaseWidget = new DynamicTimeOuterSkip(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 28:
                    if (p.dq()) {
                        mp renderRequest = dynamicRootView.getRenderRequest();
                        if (renderRequest == null) {
                            return null;
                        }
                        dynamicBaseWidget = new DynamicLottie(context, dynamicRootView, iaVar, renderRequest.e());
                    }
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                case 29:
                    dynamicBaseWidget = new DynamicImageFlipSlide(context, dynamicRootView, iaVar);
                    if (dynamicBaseWidget != null) {
                    }
                    break;
                default:
                    if (dynamicBaseWidget != null) {
                    }
                    break;
            }
        }
        return dynamicBaseWidget;
    }
}
