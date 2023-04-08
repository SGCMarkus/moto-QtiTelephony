.class public interface abstract Lcom/qti/phone/IQtiRadioConnectionCallback;
.super Ljava/lang/Object;
.source "IQtiRadioConnectionCallback.java"


# virtual methods
.method public abstract getCallForwardStatusResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V
.end method

.method public abstract getFacilityLockForAppResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V
.end method

.method public abstract getImeiResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V
.end method

.method public abstract getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
.end method

.method public abstract getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
.end method

.method public abstract getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
.end method

.method public abstract networkScanResult(ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V
.end method

.method public abstract on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
.end method

.method public abstract on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
.end method

.method public abstract onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
.end method

.method public abstract onDataDeactivateDelayTime(ILcom/qti/extphone/Token;J)V
.end method

.method public abstract onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
.end method

.method public abstract onDdsSwitchCriteriaChange(ILcom/qti/extphone/Token;Z)V
.end method

.method public abstract onDdsSwitchRecommendation(ILcom/qti/extphone/Token;I)V
.end method

.method public abstract onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
.end method

.method public abstract onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
.end method

.method public abstract onEpdgOverCellularDataSupported(ILcom/qti/extphone/Token;Z)V
.end method

.method public abstract onImeiChange(ILcom/qti/extphone/QtiImeiInfo;)V
.end method

.method public abstract onMcfgRefresh(Lcom/qti/extphone/Token;Lcom/qti/phone/QtiMcfgRefreshInfo;)V
.end method

.method public abstract onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V
.end method

.method public abstract onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
.end method

.method public abstract onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
.end method

.method public abstract onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
.end method

.method public abstract onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
.end method

.method public abstract onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
.end method

.method public abstract onSetNrUltraWidebandIconConfigResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
.end method

.method public abstract onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
.end method

.method public abstract onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
.end method

.method public abstract sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
.end method

.method public abstract setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V
.end method

.method public abstract setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
.end method

.method public abstract setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
.end method

.method public abstract startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
.end method

.method public abstract stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
.end method
