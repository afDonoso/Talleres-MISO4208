'use strict'

const Audit = require('lighthouse').Audit

const MAX_API_TIME = 3000

class ApiAudit extends Audit {
  static get meta() {
    return {
      id: 'api-audit',
      title: 'Api audit',
      category: 'MyPerformance',
      name: 'api-audit',
      description: 'Api call and resolve',
      failureDescription: 'Api call slow to resolve',
      helpText: 'Used to measure time from api called to resolved',
      requiredArtifacts: ['TimeToApi'],
    }
  }

  static audit(artifacts) {
    const loadedTime = artifacts.TimeToApi

    const belowThreshold = loadedTime <= MAX_API_TIME

    return {
      displayValue: loadedTime,
      score: Number(belowThreshold),
    }
  }
}

module.exports = ApiAudit
