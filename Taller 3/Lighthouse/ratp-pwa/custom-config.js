'use strict'

module.exports = {
  extends: 'lighthouse:default',

  passes: [
    {
      passName: 'defaultPass',
      gatherers: ['./Lighthouse/card-gatherer', './Lighthouse/api-gatherer'],
    },
  ],

  audits: ['./Lighthouse/card-audit', './Lighthouse/api-audit'],

  categories: {
    ratp_pwa: {
      name: 'Ratp pwa metrics',
      description: 'Metrics for the ratp timetable site',
      auditRefs: [
        { id: 'card-audit', weight: 1 },
        { id: 'api-audit', weight: 1 },
      ],
    },
  },
}
